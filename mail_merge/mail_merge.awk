BEGIN {
    FS=",";
    template="email_template.txt"
    output="acceptance"
    getline;
    NR=0;
    }

    {
        #Read relevant fields from input file 
        firstname=$1;
        lastname=$2;
        email=$3;
        title=$4;

        # Set output filename
        outfile=(output NR ".txt")

        #Read a line from template, replace special characters
        # fields, and print result to output file

        while ( (getline ln < template) > 0 ){
            sub(/{firstname}/,firstname,ln);
            sub(/{lastname}/,lastname,ln);
            sub(/{email}/,email,ln);
            sub(/{title}/,title,ln);
            print(ln) > outfile;
        }
        # Close the template and output file in advance of next record
        close(outfile);
        close(template);
    }