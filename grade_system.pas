program grade_system;

var
firsttest, secondtest, thirdtest, project, sum, course_total: Integer;
low_weight, exam: Integer;
name: packed array [1..40] of char;
course_weight, ca, cd, finalscore: Integer;

Begin
  writeln('Name :');
  readln(name);
  writeln('');
  writeln('');
  writeln('Enter Three Test Grades');
  writeln('');
  writeln('Test 1 (%): ');
  readln(firsttest);
  writeln('Test 2 (%):');
  readln(secondtest);
  writeln('Test 3 (%):');
  readln(thirdtest);
  writeln('What was the grade received on your project');
  readln(project);
  writeln('What was your exam score');
  readln(exam);
  course_total := firsttest + secondtest + thirdtest;
  
  ca := course_total DIV 3; 
  finalscore := ca;
  
  writeln('');
  writeln('');
  writeln('Name : ', name,'.');
  writeln('Course Total : ', course_total,'.');
  writeln('Course Weight : ');
  writeln('Exam Total : ', exam,'.');
  writeln('Exam Weight : ');
  writeln('Final Score   : ', finalscore, '.');
  writeln('Grade : ');
  if(finalscore >= 80) then
  begin
        writeln('A');
  end
  else if(finalscore > 60) and (finalscore < 79) then
  begin
        writeln('B');
  end
  else if(finalscore > 50) and (finalscore < 59) then
  begin
        writeln('C');
  end
  else if(finalscore > 40) and (finalscore < 49) then
  begin
        writeln('D');
  end
  else
  begin
        writeln('E');
  end;
  readln;
End.