
%for example :[m,error]=biSection('x-2',1,4,10)

function [m,err]=biSection(func,a,b,n)

str1='@(x)';
str2=func;
str=[str1 str2];
f=str2func(str);

if f(a).*f(b)<=0
    for i=0:n
        m=(a+b)/2;
        err=abs(f(m));
     %  disp([m err]);
        if f(a).*f(m)<=0
            b=m;
        else
            a=m;
        end
    end
else
    disp("function does not have a root");
end