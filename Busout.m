%  This program prints the power flow solution in a tabulated form
%  on the screen.
%
%  Copyright (C) 1998 by H. Saadat.
%clc

busdata(:,3)=Vm'; busdata(:,4)=deltad';
Pgt = sum(Pg);  Qgt = sum(Qg); Pdt = sum(Pd); Qdt = sum(Qd); Qsht = sum(Qsh);


fprintf('                   Power Flow Solution by Newton-Raphson Method\n')
fprintf('                        Maximum Power Mismatch = %g \n', Tol)
fprintf('                             No. of Iterations = %g \n\n', Iter) 
head =['    Bus  Voltage    Angle       ------Load------        ---Generation---       Injected'
       '    No.  Mag.       Degree        MW       Mvar           MW       Mvar           Mvar '
       '                                                                                       '];
disp(head)
for n=1:nbus
     fprintf(' %4.0f', n), fprintf(' %8.3f', Vm(n)),
     fprintf(' %10.2f', deltad(n)), fprintf(' %11.2f', Pd(n)),
     fprintf(' %9.2f', Qd(n)),  fprintf(' %13.2f', Pg(n)),
     fprintf(' %9.2f ', Qg(n)), fprintf(' %13.2f\n', Qsh(n))
end
    fprintf('      \n'), fprintf('    Total                  ')
    fprintf(' %9.2f', Pdt), fprintf(' %9.2f', Qdt),
    fprintf(' %13.2f', Pgt), fprintf(' %9.2f', Qgt), fprintf(' %14.2f\n\n', Qsht)