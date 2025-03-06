% Read space-separated numbers from standard input
input_line = input('', 's');
numbers = sscanf(input_line, '%d %d');
a = numbers(1);
b = numbers(2);
% Output their sum
fprintf('%d\n', a + b);