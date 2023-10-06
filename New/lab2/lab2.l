%option noyywrap

%{

#include<bits/stdc++.h>
using namespace std;

ofstream yyoutlog; //output filestream for log file

string loglist = ""; //list of tokens along with line numbers

// define necessary c++ variables and functions here (if any)
int Scope = 1;//to keep track of line numbers
int total_scopes = 0;
%}

/* Regular Definitions */

delim [ \v\r]

/* write regular expressions for whitespace and newline */

ws {delim}+
newline \r?\n

letter [a-zA-Z]
digit [0-9]

/* write regular expressions for id, float and integers, binaries, octala, hexadecimals, scientific notation */

id [A-Za-z_][A-Za-z0-9_]*

integers {digit}+

floats	 {digit}*(\.{digit}+)

binaries 0[bB][01]+

octals 0[0-7]+

hexadecimals 0[xX][0-9a-fA-F]+

floats_scientific [+-]?[0-9]+(\.[0-9]*)?([eE][+-]?[0-9]+)?


%%

{ws} { /* ignore whitespace */ }

{newline} {

      Scope++;
    }


if {
	    loglist="Scope No "+to_string(Scope)+": Token <IF> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}

else {
            loglist="Scope No "+to_string(Scope)+": Token <ELSE> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
for {
            loglist="Scope No "+to_string(Scope)+": Token <FOR> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
range {
            loglist="Scope No "+to_string(Scope)+": Token <RANGE> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }

break {
            loglist="Scope No "+to_string(Scope)+": Token <BREAK> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
not {
            loglist="Scope No "+to_string(Scope)+": Token <NOT> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
catch {
            loglist="Scope No "+to_string(Scope)+": Token <CATCH> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
elif {
            loglist="Scope No "+to_string(Scope)+": Token <ELIF> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
try {
            loglist="Scope No "+to_string(Scope)+": Token <TRY> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
except {
            loglist="Scope No "+to_string(Scope)+": Token <EXCEPT> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
True {
            loglist="Scope No "+to_string(Scope)+": Token <TRUE> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
False {
            loglist="Scope No "+to_string(Scope)+": Token <FALSE> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
def {
            loglist="Scope No "+to_string(Scope)+": Token <DEF> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
return {
            loglist="Scope No "+to_string(Scope)+": Token <RETURN> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
finally {
            loglist="Scope No "+to_string(Scope)+": Token <FINALLY> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
while {
            loglist="Scope No "+to_string(Scope)+": Token <WHILE> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
and {
            loglist="Scope No "+to_string(Scope)+": Token <AND> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
or {
            loglist="Scope No "+to_string(Scope)+": Token <OR> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
print {
            loglist="Scope No "+to_string(Scope)+": Token <PRINT> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
in {
            loglist="Scope No "+to_string(Scope)+": Token <IN> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
continue {
            loglist="Scope No "+to_string(Scope)+": Token <CONTINUE> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
pass {
            loglist="Scope No "+to_string(Scope)+": Token <PASS> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
None {
            loglist="Scope No "+to_string(Scope)+": Token <NONE> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
do {
            loglist="Scope No "+to_string(Scope)+": Token <DO> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }
"+"|"-" {   loglist="Scope No "+to_string(Scope)+": Token <ADDOP> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"++"|"--" {   loglist="Scope No "+to_string(Scope)+": Token <INCOP> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"<"|">"|"=="|"<="|">="|"!=" {   loglist="Scope No "+to_string(Scope)+": Token <RELOP> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"=" {   loglist="Scope No "+to_string(Scope)+": Token <ASSIGNOP> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"&&"|"||" {   loglist="Scope No "+to_string(Scope)+": Token <LOGICOP> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"!" {   loglist="Scope No "+to_string(Scope)+": Token <NOT> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"(" {   loglist="Scope No "+to_string(Scope)+": Token <LPAREN> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
")" {   loglist="Scope No "+to_string(Scope)+": Token <RPAREN> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"{" {   loglist="Scope No "+to_string(Scope)+": Token <LCURL> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"}" {   loglist="Scope No "+to_string(Scope)+": Token <RCURL> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"[" {   loglist="Scope No "+to_string(Scope)+": Token <LTHIRD> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"]" {   loglist="Scope No "+to_string(Scope)+": Token <RTHIRD> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
"," {   loglist="Scope No "+to_string(Scope)+": Token <COMMA> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}
":" {   loglist="Scope No "+to_string(Scope)+": Token <COLON> Lexeme "+yytext+" found"+"\n"+"\n";
	    yyoutlog<<loglist;
		}


{id} {
            loglist="Scope No "+to_string(Scope)+": Token <ID> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }

{integers} {
            loglist="Scope No "+to_string(Scope)+": Token <CONST_INT> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }


{floats} {
            loglist="Scope No "+to_string(Scope)+": Token <CONST_FLOAT> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }

{floats_scientific} {
            loglist="Scope No "+to_string(Scope)+": Token <CONST_FLOAT_S> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }

{binaries} {
            loglist="Scope No "+to_string(Scope)+": Token <CONST_BIN> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }

{octals} {
            loglist="Scope No "+to_string(Scope)+": Token <CONST_OCT> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }

{hexadecimals} {
            loglist="Scope No "+to_string(Scope)+": Token <CONST_HEX> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }


%%

int main(int argc, char *argv[])
{

	if(argc != 2) //check if file name is given
	{
        cout<<"Please input file name"<<endl;
		return 0;
	}

	yyin = fopen(argv[1], "r");//the file to be read must be assigned to yyin
	
	yyoutlog.open("21101094_Anuvab.txt", ios::trunc); // remember to rename the log file as mentioned in the spec
	
	if(yyin == NULL) // file does not exist
	{
		cout << "file does not exist" << endl;// print error message and exit
		return 0;
	}
	
	yylex(); // start reading the input file in a loop
	
	fclose(yyin); // close the input file

	total_scopes = Scope;//print total number of lines found in the input file
        cout << "Total Scope: " << total_scopes << endl;
	yyoutlog.close(); // close the log file
	return 0;
}