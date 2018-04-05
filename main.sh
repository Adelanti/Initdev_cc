#! /bin/bash

# Création de répertoire de logiciel 

		cd $HOME

		if  [ -e .initdev ]
		then
		echo "Répertoire existe déja"
		else	
		mkdir $(echo $HOME)/.initdev
		cp -r $(echo $HOME)/Bureau/initdev/bin $HOME/.initdev/ 
		cp -r $(echo $HOME)/Bureau/initdev/gitignores $HOME/.initdev/
		cp -r $(echo $HOME)/Bureau/initdev/licenses $HOME/.initdev/
		cp -r $(echo $HOME)/Bureau/initdev/sources $HOME/.initdev/
		cp -r $(echo $HOME)/Bureau/initdev/makefiles $HOME/.initdev/
		cp -r $(echo $HOME)/Bureau/initdev/main.sh $HOME/.initdev/
		fi 

#introduction d'aumoins un argument est obligatoire

if  [ -z $1 ]  
then
     echo "Expected arguments, please check the help : initdev –help"
     
     exit 1
#l'argument help ne doit etre suivis par aucun autre argument
elif [ $1 = -help ] 
then
	if [[ $2 = "" ]] 
	then

     echo "— Name :initdev "
     echo "'initdeb' est un outil d'initialisation de projet de développement qui sert a faciliter la tache de création d'un nouveau projet ."
     echo "— Syntax : " 
     echo " le programme doit se lancer par aumoins un argument qui porte le nom de projet comme il est possible de le suivie par d'autre    arguments qui sert comme de pré-configurations de projet" 
     echo " le programme doit se lancer avec aumoins un argument qui porte le nom de projet comme il est possible de le suivie par d'autre    arguments qui sert comme de pré-configurations de projet"
     echo " Il est a notifier aussi qu'avec l'argument '-git' il faut mentionner le type de projet afin que le logiciel puisse identifier le type de dépot git "
     echo " l'arrangement de ces arguments ne doit pas etre confondus , ie impossible de mettre deux différetens type de projet ou de license comme arguments"
     echo "— args : "
     echo "-git : sert a initialiser un dépot git "
     echo "-C : permet de créer un projet en langage C"
     echo "-CPP : permet de créer un projet en langage CPP"  
     echo "-Python : permet de créer un projet en langage Python" 
     echo "-Latex : permet de créer un projet de rédaction en Latex" 
     echo "-BEAMER : permet de créer un projet de présentation en BEAMER" 
     echo "-GPL : permet de crée un projet avec un type de licence GPL"
     echo "-MIT : permet de créer un projet avec un type de licence MIT "
     echo "— author : "
     echo " Name : GAMANE ADEL "
     echo " Email : gamaneadel@gmail.com ."  
   
	else
	echo "Argument After -help not allowed" 
	exit 1
	fi

		
#si l'utilisateur tape initdev et le nom de projet seulement initdev crée un nouveau projet sans préconfigurations
else

if [[ $2 = "" ]]
then 
mkdir  $HOME/Bureau/$1
touch  $HOME/Bureau/$1/main
mkdir  $HOME/Bureau/$1/LICENSE
mkdir  $HOME/Bureau/$1/Makefile	
exit 0
fi 




#il interdit de taper plus qu'un type de licence ou de projet en une seule requette 

  

if [[ $2 = -C ]] && [[ $3 = -CPP || $3 = -BEAMER || $3 = -Latex || $3 = -Python || $4 = -CPP || $4 = -BEAMER || $4 = -Latex || $4 = -Python ]]
then 
echo " Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $2 = -CPP ]] && [[ $3 = -C || $3 = -BEAMER || $3 = -Latex || $3 = -Python || $4 = -C || $4 = -BEAMER || $4 = -Latex || $4 = -Python ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1 
elif [[ $2 = -Python ]] && [[ $3 = -CPP || $3 = -BEAMER || $3 = -Latex || $3 = -C || $4 = -CPP || $4 = -BEAMER || $4 = -Latex || $4 = -C ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $2 = -BEAMER ]] && [[ $3 = -CPP || $3 = -C || $3 = -Latex || $3 = -Python || $4 = -CPP || $4 = -C || $4 = -Latex || $4 = -Python ]]
then 
echo " Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $2 = -Latex ]] && [[ $3 = -CPP || $3 = -BEAMER || $3 = -C || $3 = -Python || $4 = -CPP || $4 = -BEAMER || $4 = -C || $4 = -Python ]]
then 
echo " Similar Type Of Argument, please check the help : initdev –help" 
exit 1
echo ""
fi

if [[ $3 = -C ]] && [[ $2 = -CPP || $2 = -BEAMER || $2 = -Latex || $2 = -Python || $4 = -CPP || $4 = -BEAMER || $4 = -Latex || $4 = -Python ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $3 = -CPP ]] && [[ $2 = -C || $2 = -BEAMER || $2 = -Latex || $2 = -Python || $4 = -C || $4 = -BEAMER || $4 = -Latex || $4 = -Python ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1 
elif [[ $3 = -Python ]] && [[ $2 = -CPP || $2 = -BEAMER || $2 = -Latex || $2 = -C || $4 = -CPP || $4 = -BEAMER || $4 = -Latex || $4 = -C ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $3 = -BEAMER ]] && [[ $2 = -CPP || $2 = -C || $2 = -Latex || $2 = -Python || $4 = -CPP || $4 = -C || $4 = -Latex || $4 = -Python ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $3 = -Latex ]] && [[ $2 = -CPP || $2 = -BEAMER || $2 = -C || $2 = -Python || $4 = -CPP || $4 = -BEAMER || $4 = -C || $4 = -Python ]]
then 
echo " Similar Type Of Argument, please check the help : initdev –help " 
exit 1
echo ""
fi

if [[ $4 = -C ]] && [[ $3 = -CPP || $3 = -BEAMER || $3 = -Latex || $3 = -Python || $2 = -CPP || $2 = -BEAMER || $2 = -Latex || $2 = -Python ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $4 = -CPP ]] && [[ $3 = -C || $3 = -BEAMER || $3 = -Latex || $3 = -Python || $2 = -C || $2 = -BEAMER || $2 = -Latex || $2 = -Python ]]
then 
echo " Similar Type Of Argument, please check the help : initdev –help" 
exit 1 
elif [[ $4 = -Python ]] && [[ $3 = -CPP || $3 = -BEAMER || $3 = -Latex || $3 = -C || $2 = -CPP || $2 = -BEAMER || $2 = -Latex || $2 = -C ]]
then 
echo " Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $4 = -BEAMER ]] && [[ $3 = -CPP || $3 = -C || $3 = -Latex || $3 = -Python || $2 = -CPP || $2 = -C || $2 = -Latex || $2 = -Python ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $4 = -Latex ]] && [[ $3 = -CPP || $3 = -BEAMER || $3 = -C || $3 = -Python || $2 = -CPP || $2 = -BEAMER || $2 = -C || $2 = -Python ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
echo ""
fi

if [[ $2 = -GPL ]] && [[ $3 = -MIT || $4 = -MIT ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $3 = -GPL ]] && [[ $2 = -MIT || $4 = -MIT ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1 
elif [[ $4 = -GPL ]] && [[ $3 = -MIT || $2 = -MIT ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $2 = -MIT ]] && [[ $3 = -GPL || $4 = -GPL ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $3 = -MIT ]] && [[ $2 = -GPL || $4 = -GPL ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1
elif [[ $4 = -MIT ]] && [[ $3 = -GPL || $2 = -GPL || $3 = -Latex || $3 = -Python || $4 = -C || $4 = -BEAMER || $4 = -Latex || $4 = -Python ]]
then 
echo "  Similar Type Of Argument, please check the help : initdev –help " 
exit 1 
else
echo ""
fi


#fin de test1 




#interdire de taper un argument non defini 


	    if [[ $2 != -CPP && $2 != -Latex && $2 != -BEAMER && $2 != -Python && $2 != -C && $2 != -MIT && $2 != -GPL && $2 != -git && $2 != "" ]]
	    then
	    	echo "Uknown arguments, please check the help : initdev –help"
		exit 1
	    elif [[  $3 != -CPP && $3 != -Latex && $3 != -BEAMER && $3 != -Python && $3 != -C && $3 != -MIT && $3 != -GPL && $3 != -git && $3 != "" ]]
	    then
		echo "Uknown arguments, please check the help : initdev –help"
		exit 1
	    elif [[ $4 != -CPP && $4 != -Latex && $4 != -BEAMER && $4 != -Python && $4 != -C && $4 != -MIT && $4 != -GPL && $4 != -git && $4 != "" ]]	
	    then
		echo "Uknown arguments, please check the help : initdev –help"
		exit 1



	     
#interdiction de taper similair arguments
	     else

		if [[ $2 != $3 && $2 != $4 ]]
		then 
			
					
					

	             if [[ $2 = -git || $3 = -git || $4 = -git ]] 
	             then 
			

		        if [[ $2 = -C || $3 = -C || $4 = -C ]] 
		        then 

		    	if  [ -e $HOME/Bureau/$1 ]
			then
	    		cp -r $(echo $HOME)/.initdev/sources/main.c $HOME/Bureau/$1/
			else 
			    mkdir  $HOME/Bureau/$1
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile
			    mkdir $HOME/Bureau/$1/gitignores	
	    		cp -r $(echo $HOME)/.initdev/sources/main.c $HOME/Bureau/$1/	    
			fi
			cp -r $(echo $HOME)/.initdev/gitignores/c $HOME/Bureau/$1/gitignores/
git init
		        elif [[ $2 = -CPP || $3 = -CPP || $4 = -CPP ]]   
		        then
		    
			if  [ -e $HOME/Bureau/$1 ]
			then
	    		cp -r $(echo $HOME)/.initdev/sources/main.cpp $HOME/Bureau/$1/
			else 
			    mkdir  $HOME/Bureau/$1
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile
			    mkdir $HOME/Bureau/$1/gitignores	
	    		cp -r $(echo $HOME)/.initdev/sources/main.cpp $HOME/Bureau/$1/	    
			fi
			cp -r $(echo $HOME)/.initdev/gitignores/cpp $HOME/Bureau/$1/gitignores/
git init
		        elif [[ $2 = -Python || $3 = -Python || $4 = -Python ]]	 
		        then
		    
			if  [ -e $HOME/Bureau/$1 ]
			then
	    		cp -r $(echo $HOME)/.initdev/sources/main.py $HOME/Bureau/$1/
			else 
			    mkdir  $HOME/Bureau/$1
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile
			    mkdir $HOME/Bureau/$1/gitignores	
	    		cp -r $(echo $HOME)/.initdev/sources/main.py $HOME/Bureau/$1/	    
			fi
		        cp -r $(echo $HOME)/.initdev/gitignores/python $HOME/Bureau/$1/gitignores/
git init 
		        elif [[ $2 = -Latex || $3 = -Latex || $4 = -Latex ]]    
		        then
			if  [ -e $HOME/Bureau/$1 ]
			then
	    		cp -r $(echo $HOME)/.initdev/sources/latexmin.tex $HOME/Bureau/$1/
			else 
			    mkdir  $HOME/Bureau/$1
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile
			    mkdir $HOME/Bureau/$1/gitignores	
	    		cp -r $(echo $HOME)/.initdev/sources/latexmin.tex $HOME/Bureau/$1/	    
			fi
		        cp -r $(echo $HOME)/.initdev/gitignores/tex $HOME/Bureau/$1/gitignores/
git init
		        else
		        echo "You Must Set a Project Type, please check the help : initdev –help" 
		        exit 1

		        fi
	            fi
          
	 
			
	   

	  

	if [[ $2 = -Python || $3 = -Python || $4 = -Python ]] 
        then
	    
	    		if  [ -e $HOME/Bureau/$1 ]
			then
	    		cp -r $(echo $HOME)/.initdev/sources/main.py $HOME/Bureau/$1/
			else 
			    mkdir  $HOME/Bureau/$1
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile	
	    		cp -r $(echo $HOME)/.initdev/sources/main.py $HOME/Bureau/$1/	    
			fi	
	
	elif [[ $2 = -CPP || $3 = -CPP || $3 = -CPP ]] 
	then
	   
	    		if  [ -e $HOME/Bureau/$1 ]
			then
	    		cp -r $(echo $HOME)/.initdev/sources/main.cpp $HOME/Bureau/$1/
			else 
			    mkdir  $HOME/Bureau/$1
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile	
	    		cp -r $(echo $HOME)/.initdev/sources/main.cpp $HOME/Bureau/$1/	    
			fi    
	

	elif [[ $2 = -Latex || $3 = -Latex || $4 = -Latex ]] 
        then
	    
	                if  [ -e $HOME/Bureau/$1 ]
			then
	    		cp -r $(echo $HOME)/.initdev/sources/latexmin.tex $HOME/Bureau/$1/
			else 
			    mkdir  $HOME/Bureau/$1
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile	
	    		cp -r $(echo $HOME)/.initdev/sources/latexmin.tex $HOME/Bureau/$1/	    
			fi
	
	elif [[ $2 = -BEAMER || $3 = -BEAMER || $4 = -BEAMER ]] 
	then
	    
	   		if  [ -e $HOME/Bureau/$1 ]
			then
	    		cp -r $(echo $HOME)/.initdev/sources/beamer.tex $HOME/Bureau/$1/
			else 
			    mkdir  $HOME/Bureau/$1
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile	
	    		cp -r $(echo $HOME)/.initdev/sources/beamer.tex $HOME/Bureau/$1/	    
			fi
	
	elif [[ $2 = -C || $3 = -C || $4 = -C ]] 
        then 
	    
	   		if  [ -e $HOME/Bureau/$1 ]
			then
	    		cp -r $(echo $HOME)/.initdev/sources/main.c $HOME/Bureau/$1/
			else 
			    mkdir  $HOME/Bureau/$1
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile	
	    		cp -r $(echo $HOME)/.initdev/sources/main.c $HOME/Bureau/$1/	    
			fi
	

	else
	 
	echo ""
	
	fi

	if [[ $2 = -GPL || $3 = -GPL || $4 = -GPL ]] 
	  then
			if  [ -e $HOME/Bureau/$1 ]
			then
	    cp -r $(echo $HOME)/.initdev/licenses/GPL $HOME/Bureau/$1/LICENSE/
			else 
			    mkdir  $HOME/Bureau/$1
			    touch  $HOME/Bureau/$1/main
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile	
	    cp -r $(echo $HOME)/.initdev/licenses/GPL $HOME/Bureau/$1/LICENSE/	    
			fi
		
	  elif [[ $2 = -MIT || $3 = -MIT || $4 = -MIT ]] 
	  then
	    		if  [ -e $HOME/Bureau/$1 ]
			then
	    cp -r $(echo $HOME)/.initdev/licenses/MIT $HOME/Bureau/$1/LICENSE/
			else 
			    mkdir  $HOME/Bureau/$1
			    touch  $HOME/Bureau/$1/main
			    mkdir  $HOME/Bureau/$1/LICENSE
			    mkdir  $HOME/Bureau/$1/Makefile	
	    cp -r $(echo $HOME)/.initdev/licenses/MIT $HOME/Bureau/$1/LICENSE/	    
			fi


	  else
	  echo ""

	  fi	


			
			else
			echo "Similar Argument Not Allowed, please check the help : initdev –help " 
			exit 1
				
		
                 fi     




	fi



fi




