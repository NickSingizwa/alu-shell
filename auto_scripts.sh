#!/bin/bash
cd permissions
cat > 5-execute << 'EOFS'
#!/bin/bash
chmod u+x hello
EOFS
cat > 6-multiple_permissions << 'EOFS'
#!/bin/bash
chmod ug+x,o+r hello
EOFS
cat > 7-everybody << 'EOFS'
#!/bin/bash
chmod +x hello
EOFS
cat > 8-James_Bond << 'EOFS'
#!/bin/bash
chmod 007 hello
EOFS
cat > 9-John_Doe << 'EOFS'
#!/bin/bash
chmod 753 hello
EOFS
cat > 10-mirror_permissions << 'EOFS'
#!/bin/bash
chmod --reference=olleh hello
EOFS
cat > 11-directories_permissions << 'EOFS'
#!/bin/bash
find . -type d -exec chmod a+x {} \;
EOFS
cat > 12-directory_permissions << 'EOFS'
#!/bin/bash
mkdir -m 751 my_dir
EOFS
cat > 13-change_group << 'EOFS'
#!/bin/bash
chgrp school hello
EOFS
cat > 14-change_owner_and_group << 'EOFS'
#!/bin/bash
chown -R vincent:staff .
EOFS
cat > 15-symbolic_link_permissions << 'EOFS'
#!/bin/bash
chown -h vincent:staff _hello
EOFS
cat > 16-if_only << 'EOFS'
#!/bin/bash
chown --from=guillaume vincent hello
EOFS
chmod +x 5-execute 6-multiple_permissions 7-everybody 8-James_Bond 9-John_Doe 10-mirror_permissions 11-directories_permissions 12-directory_permissions 13-change_group 14-change_owner_and_group 15-symbolic_link_permissions 16-if_only
echo "All scripts created successfully in the permissions directory"
