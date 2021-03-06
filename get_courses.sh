#!/bin/bash
#coursera-dl -u mikhail.lvovitch@gmail.com -p tranzit -d ~/downloads/coursera/ algo2-2012-001
#sudo chmod -R 777 ~/downloads/coursera/algo2-2012-001
#course_list='algo-003 composition-001 algo2-2012-001 algs4partI-002'
do_rsync=off
do_download=on
for var in "$@"
do
	if [ $var = '-c' ] ; then
		do_rsync='on'
	fi;
	if [ $var = '-no_d' ] ; then
		do_download='off'
	fi;
done

# lifenutr-002 gamification-002 interactivepython-002 calcsing-002
course_list='humankind-002'
coursera_base_dir=~/Downloads/video/coursera/

#coursera_user_email=some@email.com
#coursera_user_password=passwd

source get_courses_cfg.sh

echo "Downloading: \t$do_download."
echo "Syncing: \t$do_rsync."
echo "Courses: $course_list"

if [ $do_download = 'on' ] ; then
	for course in $course_list ; do
		echo; echo;
		echo =================  Processing $course ====================;
        if [[ -d "${coursera_base_dir}" && ! -L "${coursera_base_dir}" ]] ; then
            echo "make dir '$coursera_base_dir'"
            mkdir $coursera_base_dir
        fi

		echo -u $coursera_user_email -p $coursera_user_password -d $coursera_base_dir $course
		coursera-dl -u $coursera_user_email -p $coursera_user_password -d $coursera_base_dir $course
		sudo chmod -R 777 $coursera_base_dir/$course
	done
fi;

if [ $do_rsync = 'on' ] ; then
	sub_path='data/video/coursera/';
	echo; echo; echo;
	echo "Syncing is $do_rsync. sub_path = '$sub_path'"
	full_path=''
	for drive in `ls -d /media/*` ;
	do
		for drive in `ls -d /media/*` ;
		do
			if [ -d $drive/$sub_path ] ; then
				full_path=$drive/$sub_path;
			fi;
		 done;
	done;
	if [ ! $full_path = '' ] ; then
		echo "Destination drive found. Full path is '$full_path'."
		for course in $course_list ; do
			echo; echo;
			echo =================  Processing $course ====================;
			echo "coping  '$coursera_base_dir$course' ==> '$full_path'"
			time rsync -rh --stats $coursera_base_dir$course $full_path
		done
	else 
		echo "Destination drive not found."
	fi;
fi;

#coursera-dl -u mikhail.lvovitch@gmail.com -p tranzit -d ~/downloads/coursera/ composition-001
#sudo chmod -R 777 ~/downloads/coursera/composition-001
