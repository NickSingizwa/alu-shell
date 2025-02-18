#!/bin/bash
cd io_redirections_and_filters
cat > 0-hello_world << 'EOFS'
#!/bin/bash
echo "Hello, World"
EOFS
cat > 1-confused_smiley << 'EOFS'
#!/bin/bash
echo "\"(Ôo)'"
EOFS
cat > 2-hellofile << 'EOFS'
#!/bin/bash
cat /etc/passwd
EOFS
cat > 3-twofiles << 'EOFS'
#!/bin/bash
cat /etc/passwd /etc/hosts
EOFS
cat > 4-lastlines << 'EOFS'
#!/bin/bash
tail -n 10 /etc/passwd
EOFS
cat > 5-firstlines << 'EOFS'
#!/bin/bash
head -n 10 /etc/passwd
EOFS
cat > 6-third_line << 'EOFS'
#!/bin/bash
head -n 3 iacta | tail -n 1
EOFS
cat > 7-file << 'EOFS'
#!/bin/bash
echo "Best School" > \*\\'"Best School"\'\\*$\?\*\*\*\*\*:)
EOFS
cat > 8-cwd_state << 'EOFS'
#!/bin/bash
ls -la > ls_cwd_content
EOFS
cat > 9-duplicate_last_line << 'EOFS'
#!/bin/bash
tail -n 1 iacta >> iacta
EOFS
cat > 10-no_more_js << 'EOFS'
#!/bin/bash
find . -type f -name "*.js" -delete
EOFS
cat > 11-directories << 'EOFS'
#!/bin/bash
find . -mindepth 1 -type d | wc -l
EOFS
cat > 12-newest_files << 'EOFS'
#!/bin/bash
ls -t1 | head -n 10
EOFS
cat > 13-unique << 'EOFS'
#!/bin/bash
sort | uniq -u
EOFS
cat > 14-findthatword << 'EOFS'
#!/bin/bash
grep "root" /etc/passwd
EOFS
cat > 15-countthatword << 'EOFS'
#!/bin/bash
grep -c "bin" /etc/passwd
EOFS
cat > 16-whatsnext << 'EOFS'
#!/bin/bash
grep -A 3 "root" /etc/passwd
EOFS
cat > 17-hidethisword << 'EOFS'
#!/bin/bash
grep -v "bin" /etc/passwd
EOFS
cat > 18-letteronly << 'EOFS'
#!/bin/bash
grep "^[a-zA-Z]" /etc/ssh/sshd_config
EOFS
cat > 19-AZ << 'EOFS'
#!/bin/bash
tr "Ac" "Ze"
EOFS
cat > 20-hiago << 'EOFS'
#!/bin/bash
tr -d "cC"
EOFS
cat > 21-reverse << 'EOFS'
#!/bin/bash
rev
EOFS
cat > 22-users_and_homes << 'EOFS'
#!/bin/bash
cut -d ":" -f1,6 /etc/passwd | sort
EOFS
chmod +x 0-hello_world 1-confused_smiley 2-hellofile 3-twofiles 4-lastlines 5-firstlines 6-third_line 7-file 8-cwd_state 9-duplicate_last_line 10-no_more_js 11-directories 12-newest_files 13-unique 14-findthatword 15-countthatword 16-whatsnext 17-hidethisword 18-letteronly 19-AZ 20-hiago 21-reverse 22-users_and_homes
echo "All scripts created successfully in the io_redirections_and_filters directory"
