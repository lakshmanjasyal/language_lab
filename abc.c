#include<stdio.h>
#include<string.h>

int main(){
char str[100];
int state=0;
printf("Enter a string:");
scanf("%s",str);
for(int i=0;i<str[i]!='\0';i++){
	switch(state){
	case 0: 
		if(str[i]=='a') state=1;
		else if(str[i]=='b') state=0;
		else if(str[i]=='c') state=0;
		else state=4;
	        break;
	case 1: 
		if(str[i]=='a') state=1;
		else if(str[i]=='b') state=2;
		else if(str[i]=='c') state=0;
		else state=4;
	        break;
	case 2: 
		if(str[i]=='a') state=1;
		else if(str[i]=='b') state=0;
		else if(str[i]=='c') state=3;
		else state=4;
	        break;
	case 3: 
		if(str[i]=='a') state=3;
		else if(str[i]=='b') state=3;
		else if(str[i]=='c') state=3;
		else state=4;
	        break;
	}
	}
	
  	if (state==4) printf("Invalid Input\n");
  	else if (state==3) printf("String Accepted\n");
  	else printf("String Rejected\n");
  	
  	return 0;
  }
	
