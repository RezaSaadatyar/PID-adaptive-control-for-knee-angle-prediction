clc;close all;
t=2;
N=numel(PHI_m_PID);
A=zeros(N,1);
A(t:end,1)=c_m_PID(1:end-t+1,1);
TL=zeros(N,1);
for i=2:N
    TL(i)=TL(i-1)+A(i)*PHI_r_PID(i);
end
figure();
plot(TL)
a=max(TL);
Tr=zeros(N,1);
for i=2:N
    Tr(i)=Tr(i-1)+(-A(i)+PHI_r_PID(i))^2;
end
TR=sqrt(Tr(end)/N);
figure();
plot(Tr)

