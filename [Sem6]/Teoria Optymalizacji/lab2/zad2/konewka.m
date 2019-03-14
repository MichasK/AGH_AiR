n=5;
z=2;
xn=[7/2*n; 7*n];
X=xn;
itp=1;
e0=0.001;
maxit=100;
dm=eye(2);
kier_baz = [];
d=[];
for iter=itp:maxit 
   xn=prosta1(xn,dm(:,z));
   x0=xn;
   X=[X xn];
   for i=1:z
      [xn,qn]=prosta1(xn,dm(:,i));
   end
   delta=norm(xn-x0);
   if delta<e0, break, end
   kier_baz=[kier_baz  dm];   %    dodana zmienna 
   dm(:,1)=[];
   dm(:,z)=(xn-x0)/delta;
d=[d dm];
end
itp=iter;
x1 = linspace(-100,100);
x2 = linspace(0,300);
[x1 x2] = meshgrid(x1,x2);
q=100*(x2-x1.^2).^2+(1-x1.^2).^2;
contour(x1,x2,q,100);
hold on;
plot(X(1,:),X(2,:),'o');

