function imOut = ImEdgeReflect(imIn,nRows,nCols);

%function imOut = zeropad(imIn,nRows,nCols,value);
% will pad a 2D matrix with nRows, & nColumns, containing the value (0 by
% default)
% -jms may 06


rowPad1 = flipud(imIn(1:nRows,:));
rowPad2 = flipud(imIn(end-nRows+1:end,:));
imIn = cat(1,rowPad1,imIn,rowPad2);

colPad1 = fliplr(imIn(:,1:nRows));
colPad2 = fliplr(imIn(:,end-nRows+1:end));
imOut = cat(2,colPad1,imIn,colPad2);

