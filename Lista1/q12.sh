#!/bin/bash
users=$(wc -l < /etc/passwd)
users_bin=$(grep /bin/bash /etc/passwd | wc -l)
users_not_bin=$[users-users_bin]
echo "Número de usuários: $users"
echo "Número de usuários que usam /bin/bash: $users_bin"
echo "Número de usuários que não usam /bin/bash: $users_not_bin"
