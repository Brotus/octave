function [R, y]=gauss(A,b)
%  Ueberfuehre Gleichungssystem auf aequivalente Dreiecksform
% Eingabe:  A...regularre nxn Matrix
%           b...rechte Seite, nx1 Vektor
% Ausgabe:  A...obere Dreiecksmatrix
%           b...modifizierte rechte Seite
n=size(A,1);
notEmptyFlag = ~isempty(b);
if ~notEmptyFlag
c = 0;
end
for j=1:n
    % Pivotisierung (Zeilenvertauschung)
    % finde groessten Eintrag in Spalte j
    [m,i]=max(abs(A(j:n,j))); i=i+j-1;
    % vertausche Zeilen i und j
    
    for k=j:n
        tmp=A(i,k); A(i,k)=A(j,k); A(j,k)=tmp;
    end
    if notEmptyFlag
        % Vertausche spalte in b
        tmp=b(i,:); b(i,:)=b(j,:); b(j,:)=tmp;
    else
        % Zähle Vertauschungen
        if i~=j
        c = c+1;
        end
    end
    % Erzeuge 0-en in der j-ten Spalte
    for i=j+1:n
        lij=A(i,j)/A(j,j);
        for k=j:n
            A(i,k) = A(i,k)-lij*A(j,k);
        end
        if notEmptyFlag 
            %Für die ganze Zeile in B
            b(i,:)=b(i,:)-lij*b(j,:);
        end
    end
end

R = A;
if notEmptyFlag
    y = b;
else
    % Falls b leer war
    y = (-1)^(c);
end