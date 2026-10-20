#include<stdio.h>
#include<string.h>

int main(){
char str[100];
int state=0;
printf("Enter a binary string:");
scanf("%s",str);
for(int i=0;i<strlen(str);i++){
	switch(state){
	case 0: 
		if(str[i]=='0') state=1;
		else if(str[i]=='1') state=0;
		else {
			printf("Invalid input\n");
			return 0;
		}
		
		break;
	case 1: 
		if(str[i]=='0') state=2;
		else if(str[i]=='1') state=0;
		else {
			printf("Invalid input\n");
			return 0;
		}
		
		break;
	case 2: 
		if(str[i]=='0') state=2;
		else if(str[i]=='1') state=0;
		else {
			printf("Invalid input\n");
			return 0;
		}
		
		break;
	}
	}
	
  	if (state==2) printf("String Accepted\n");
  	else printf("String Rejected\n");
  	
  	return 0;
  }
	
