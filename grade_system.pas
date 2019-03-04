Program Grade_System;

Var
ids: array[1..10] of integer;
data: array[1..10, 1..6] of integer;
grades: array[1..10] of char;
choice, firstt, secondt, thirdt, project, exam, ctotal, finalscore: Integer;
ca, courseweight, examweight: real;
letter: char;
student_counter, idnumber: integer;

function add_data():integer;
begin
	writeln;
	writeln('Enter Student ID Number Format: xxxx');
	readln(idnumber);
	writeln('Enter test 1');
	readln(firstt);
	writeln('Enter test 2');
	readln(secondt);
	writeln('Enter test 3');
	readln(thirdt);
	writeln('Enter Project Grade');
	readln(project);
	writeln('Enter Exam Grade');
	readln(exam);
	ctotal := firstt + secondt + thirdt;
	ca := ctotal DIV 3;
	courseweight := ca * 0.4;
	examweight := exam * 0.6;
	finalscore := round(courseweight) + round(examweight);
	if(finalscore >= 80) then
	begin
			letter := 'A';
	end
	else if(finalscore > 60) and (finalscore < 79) then
	begin
			letter := 'B';
	end
	else if(finalscore > 50) and (finalscore < 59) then
	begin
			letter := 'C';
	end
	else if(finalscore > 40) and (finalscore < 49) then
	begin
			letter := 'D';
	end
	else
	begin
			letter := 'E';
	end;
	
	student_counter := student_counter + 1;
	ids[student_counter] := student_counter ;
	data[student_counter, 1] := ctotal;
	data[student_counter, 2] := round(courseweight);
	data[student_counter, 3] := exam;
	data[student_counter, 4] := round(examweight);
	data[student_counter, 5] := finalscore;
	data[student_counter, 6] := idnumber;
	grades[student_counter] :=	letter;
	writeln;writeln;writeln;writeln;
	Writeln('ID Number : ', idnumber,'.');
	Writeln('Course Total :', ctotal,'.');
	Writeln('Course Weight : ', round(courseweight),'.');
	Writeln('Exam Score : ', exam,'.');
	Writeln('Exam Weight : ',round(examweight),'.');
	Writeln('Final Score : ', finalscore,'.');
	Writeln('Final Grade : ', letter,'.');
	writeln;
	readln();
end;

function view_data():integer;
var
   a: integer;
begin
	for a := 1  to student_counter do
	begin
		writeln;writeln;writeln;
		Write(' '#9'ID Number:'#9' ',data[a,6]);Write('Course Total:'#9' ',data[a,1]);Write(' '#9'Course Weight:'#9' ',data[a,2]);Write(' '#9'Exam Score:'#9' ',data[a,3]);Write(' '#9'Exam Weight:'#9' ',data[a,4]);
		Write(' '#9'Final Score:'#9' ',data[a,5]);Writeln(' '#9'Final Grade:'#9' ',grades[a]);
		writeln;writeln;writeln;
	end;
end;

function view_summary():string;
var
	grade_p: array[1..5] of char = ('A','B','C','D','E');
	grades_count: array[1..5] of integer = (0, 0, 0, 0, 0);
	x, i, j: integer;
	grade_counter, pass_counter, fail_counter: integer;
	
begin
	pass_counter := 0;
	fail_counter := 0; 
	for i := 1  to 5 do
	begin
		grade_counter := 0;
		for j := 1  to 10 do
		begin
			if(grade_p[i] = grades[j]) then
			grade_counter := grade_counter + 1;
		end;
	grades_count[i] := grade_counter;
	end;
	writeln;writeln;writeln;writeln;
	Writeln('Number of A: ', grades_count[1],'.');
	Writeln('Number of B: ', grades_count[2],'.');
	Writeln('Number of C: ', grades_count[3],'.');
	Writeln('Number of D: ', grades_count[4],'.');
	Writeln('Number of E: ', grades_count[5],'.');
	for x := 1  to student_counter do
	begin
		if(data[x,5] >= 60) then
			pass_counter := pass_counter + 1
		else
			fail_counter := fail_counter + 1;
	end;
	writeln;writeln;
	Writeln('Total Students Passing: ', pass_counter,'.');
	Writeln('Number Students Failing: ', fail_counter,'.');
end;

function start():string;
begin
student_counter := 0;
repeat
	writeln('SELECT A NUMBER FROM THE MENU');
	writeln('1. Add Information');
	writeln('2. View Data');
	writeln('3. View Summary');
	writeln('4. Exit Program');
	readln(choice);
	case(choice) of
			1 : add_data();
			2 : view_data();
			3 : view_summary();
			4 : writeln('Exit');
	end;
until choice = 4;
end;

BEGIN
	start();
END.
