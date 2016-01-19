% Berechnet die Zeilenstufenform nach dem Gauss-Algorithmus mit Pivotisierung,
% auch fuer mehrere rechte Seiten. Ist size(b,2)==0, so ist y=(-1)^l wobei l die
% Anzahl der Zeilenvertauschungen ist.
% Eingabe:    A ist die zu transformierende Matrix
%             b ist die rechte Seite bzw. bei mehreren rechten Seiten deren Konkatenation
% Ausgabe:    R ist die Zeilenstufenform
%             y ist die transformierte rechte Seite oder (-1)^l

function [R,y]=gauss(A,b)
  n = size(A,1);
  bool = size(b,2)>=1;
  counter = 0;
  
  for j=1:n
    % groessten Eintrag der j-ten Zeile
    [m,i]=max(abs(A(j:n,j))); i = i+j-1;
    
    % Zeilen i und j von A vertauschen
    if(i~=j)
      %for k=j:n
      %  tmp = A(i,k); A(i,k)=A(j,k); A(j,k)=tmp;
      %endfor
      tmp = A(i,:); A(i,:)=A(j,:); A(j,:)=tmp;                                                      
      if(~bool)
        counter = counter + 1;
      endif
    endif
    
    % Zeilen von b 
    if(bool)
      tmp=b(i,:); b(i,:)=b(j,:);b(j,:)=tmp;
    endif
    
    % 0 in der j-ten Spalte erzeugen
    for i=j+1:n
      lij=A(i,j)/A(j,j);
      for k=j:n
        A(i,k)=A(i,k)-lij*A(j,k);
      endfor
      if(bool)
        b(i,:)=b(i,:)-lij.*b(j,:);
      endif
    endfor
  endfor
  
  R=A;
  if(bool)
    y = b;
  else
    y = (-1)^counter;
  endif
endfunction