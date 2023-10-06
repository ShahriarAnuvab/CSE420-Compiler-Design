/* A Bison parser, made by GNU Bison 2.7.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2012 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     DO = 258,
     BREAK = 259,
     CONTINUE = 260,
     CHAR = 261,
     DOUBLE = 262,
     SWITCH = 263,
     CASE = 264,
     DEFAULT = 265,
     IF = 266,
     ELSE = 267,
     FOR = 268,
     WHILE = 269,
     PRINTLN = 270,
     RETURN = 271,
     INT = 272,
     FLOAT = 273,
     VOID = 274,
     ID = 275,
     CONST_INT = 276,
     CONST_FLOAT = 277,
     ADDOP = 278,
     MULOP = 279,
     RELOP = 280,
     LOGICOP = 281,
     ASSIGNOP = 282,
     NOT = 283,
     LPAREN = 284,
     RPAREN = 285,
     LCURL = 286,
     RCURL = 287,
     LTHIRD = 288,
     RTHIRD = 289,
     SEMICOLON = 290,
     COMMA = 291,
     INCOP = 292,
     DECOP = 293,
     SUBOP = 294,
     MODOP = 295,
     DIVOP = 296
   };
#endif
/* Tokens.  */
#define DO 258
#define BREAK 259
#define CONTINUE 260
#define CHAR 261
#define DOUBLE 262
#define SWITCH 263
#define CASE 264
#define DEFAULT 265
#define IF 266
#define ELSE 267
#define FOR 268
#define WHILE 269
#define PRINTLN 270
#define RETURN 271
#define INT 272
#define FLOAT 273
#define VOID 274
#define ID 275
#define CONST_INT 276
#define CONST_FLOAT 277
#define ADDOP 278
#define MULOP 279
#define RELOP 280
#define LOGICOP 281
#define ASSIGNOP 282
#define NOT 283
#define LPAREN 284
#define RPAREN 285
#define LCURL 286
#define RCURL 287
#define LTHIRD 288
#define RTHIRD 289
#define SEMICOLON 290
#define COMMA 291
#define INCOP 292
#define DECOP 293
#define SUBOP 294
#define MODOP 295
#define DIVOP 296



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
