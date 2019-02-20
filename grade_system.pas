program grade_system;

var
firsttest, secondtest, thirdtest, project, sum, course_total: Integer;
low_weight: Integer;
ca, exam, finalscore: Integer;

Begin
  writeln('Three Test Grades');
  writeln('Test 1: ');
  readln(firsttest);
  writeln('Test 2:');
  readln(secondtest);
  writeln('Test 3:');
  readln(thirdtest);
  writeln('What was the grade recieved on your project');
  readln(project);
  writeln('What was your exam score');
  readln(exam);
  course_total := firsttest + secondtest + thirdtest;
  ca := course_total DIV 3;
  finalscore := ca;
  writeln('Course Average : ', ca,'.');
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
