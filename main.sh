
#! /bin/bash

chmod 777 $HOME/Bureau/initdev/main.sh 

if  [ -z $1 ]  
then

     echo "Expected arguments, please check the help : initdev –help"
     
     exit 1
 
elif [ $1 = -help ] 
then

     echo "— Name : Afficher le nom de l’application et une petite description."
     echo "— Syntax : Afficher la syntaxe d’utilisation de la commande initdev."
     echo "— args : Lister les arguments et donner une description de chaque argument."     
     echo "— author : Afficher le nom et l’email de l’auteur de l’application."     
else


    
mkdir  $HOME/Bureau/$1
cd $HOME/Bureau/$1
touch  $HOME/Bureau/$1/main
mkdir  $HOME/Bureau/$1/LICENSE     
mkdir  $HOME/Bureau/$1/Makefile
	       

	 
	if  [[ $2 = "" ]]   #sil que le nom de projrt je veux quil sorte 
	then 
    	exit 0
     
	else

	cd $HOME

		if  [ -e .initdev ]
		then
		echo " fichier existe déja ! "
		else	
		mkdir $(echo $HOME)/.initdev
		cp -r $(echo $HOME)/Bureau/initdev/bin $HOME/.initdev/ 
		cp -r $(echo $HOME)/Bureau/initdev/gitignores $HOME/.initdev/
		cp -r $(echo $HOME)/Bureau/initdev/licenses $HOME/.initdev/
		cp -r $(echo $HOME)/Bureau/initdev/sources $HOME/.initdev/
		cp -r $(echo $HOME)/Bureau/initdev/makefiles $HOME/.initdev/
		cp -r $(echo $HOME)/Bureau/initdev/main.sh $HOME/.initdev/
		fi 
	
	elif  [[ $2 = -git ]]
	then 
					echo "You must set project type, please check the help : initdev –help"
					exit 1

	elif [[ $2 = -C ]] 
	then
					cp -r $(echo $HOME)/.initdev/sources/main.c $HOME/Bureau/$1/
					
	elif [[ $2 = -CPP ]]
	then
 					cp -r $(echo $HOME)/.initdev/sources/main.cpp $HOME/Bureau/$1/
					
	elif [[ $2 = -Python ]]
	then
 					cp -r $(echo $HOME)/.initdev/sources/main.Py $HOME/Bureau/$1/
					
	elif [[ $2 = -Latex ]]
	then
					cp -r $(echo $HOME)/.initdev/sources/main.tex $HOME/Bureau/$1/
	else 
					echo "incorect type of project"
					exit 1

	fi 


		if [[ $3 = "" ]] 
		then
			exit 0

                elif [[ $3 = -git ]]
		then 
					mkdir $HOME/Bureau/$1/gitignores

					if [[ $2 = -C ]] 
					then
					cp -r $(echo $HOME)/.initdev/gitignores/c $HOME/Bureau/$1/gitignores/
					
					elif [[ $2 = -CPP ]]
					then
 					cp -r $(echo $HOME)/.initdev/gitignores/cpp $HOME/Bureau/$1/gitignores/

					elif [[ $2 = -Python ]]
					then
 					cp -r $(echo $HOME)/.initdev/gitignores/py $HOME/Bureau/$1/gitignores/
					
					elif [[ $2 = -Latex ]]
					then
					cp -r $(echo $HOME)/.initdev/gitignores/tex $HOME/Bureau/$1/gitignores/
					else
 
					fi
git init 
		exit 0
			
			
		elif [[ $3 = -GPL ]] 
		then
			cp -r $(echo $HOME)/.initdev/licenses/GPL $HOME/Bureau/$1/LICENSE/
 
		elif [[ $3 = -MIT ]] 
		then
			cp -r $(echo $HOME)/.initdev/licenses/MIT $(echo $HOME)/Bureau/$1/LICENSE/
			 
		else 

			echo " incorect type of license "
			exit 1 
		fi

 

			if [[ $4 = "" ]]
			then 
					exit 0

			elif [[ $4 = -git ]]
			then
 
					mkdir $HOME/Bureau/$1/gitignores



	                                if [[ $2 = -C ]] 
					then
					cp -r $(echo $HOME)/.initdev/gitignores/c $HOME/Bureau/$1/gitignores/
					
					elif [[ $2 = -CPP ]]
					then
 					cp -r $(echo $HOME)/.initdev/gitignores/cpp $HOME/Bureau/$1/gitignores/

					elif [[ $2 = -Python ]]
					then
 					cp -r $(echo $HOME)/.initdev/gitignores/py $HOME/Bureau/$1/gitignores/
					
					elif [[ $2 = -Latex ]]
					then
					cp -r $(echo $HOME)/.initdev/gitignores/tex $HOME/Bureau/$1/gitignores/

					else
					echo "" 
					fi

git init					
					exit 0
					else
					echo " u must set -git " 
					exit 1

			fi

exit 0		
	
	
fi 
