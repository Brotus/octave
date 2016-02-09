% Berechnet die Zeilenstufenform nach dem Gauss-Algorithmus mit Pivotisierung,
% auch fuer mehrere rechte Seiten. Ist size(b,2)==0, so ist y=(-1)^l wobei l die
% Anzahl der Zeilenvertauschungen ist.
% Eingabe:    A ist die zu transformierende Matrix
%             b ist die rechte Seite bzw. bei mehreren rechten Seiten deren Konkatenation
% Ausgabe:    R ist die Zeilenstufenform
%             y ist die transformierte rechte Seite oder (-1)^l

function [R,y]=gauss(A,b)
  n = size(A,1);
  % bool ist true iff die rechte seite nicht [] ist.
  bool = size(b,2)>=1;
  % zaehlt die Vertauschungen
  counter = 0;
  
  for j=1:n
    % groessten Eintrag der j-ten Zeile
    [~,i]=max(abs(A(j:n,j))); i = i+j-1;
    
    % Zeilen i und j von A vertauschen
    if(i~=j)
      %for k=j:n
      %  tmp = A(i,k); A(i,k)=A(j,k); A(j,k)=tmp;
      %endfor
      % schliesslich ist das MATLAB!
      tmp = A(i,:); A(i,:)=A(j,:); A(j,:)=tmp;                                                      
      if(~bool)
        counter = counter + 1;
      end
    end
    
    % Zeilen von b
    % muessen nur vertauscht werden wenn die rechte Seite existiert
    if(bool)
      tmp=b(i,:); b(i,:)=b(j,:);b(j,:)=tmp;
    end
    
    % 0 in der j-ten Spalte erzeugen
    for i=j+1:n
      lij=A(i,j)/A(j,j);
      for k=j:n
        A(i,k)=A(i,k)-lij*A(j,k);
      end
      % fuer die rechte seite nur, wenn sie existiert
      % beim erzeugen der 0en werden keine Zeilen vertauscht
      if(bool)
        b(i,:)=b(i,:)-lij.*b(j,:);
      end
    end
  end
  
  R=A;
  if(bool)
    y = b;
  else
    y = (-1)^counter;
  end