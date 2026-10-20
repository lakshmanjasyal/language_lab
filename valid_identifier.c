#include<stdio.h>
#include<string.h>
#include<ctype.h>

int main(){
char str[100];
int state=0;

printf("Enter a binary string:");
scanf("%s",str);

for(int i=0;i<str[i]!='\0';i++){
	switch(state){
	case 0: 
		if(isalpha(str[i]) || str[i]=='_') state=1;
		else state=-1;
                break;
	case 1: 
		if(isalnum(str[i]) || str[i]=='_') state=1;
		else state=-1;
                break;
	}
	if (state==-1)
	  break;
	}
	
  	if (state==1) printf("String Accepted\n");
  	else printf("String Rejected\n");
  	
  	return 0;
  }
	
