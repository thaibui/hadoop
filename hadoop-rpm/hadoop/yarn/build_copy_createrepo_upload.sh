rpmbuild -bb /root/hadoop/hadoop-rpm/hadoop/yarn/SPECS/yarn.spec \
  --buildroot /root/hadoop/hadoop-rpm/buildroot/hadoop-yarn \
  --define "_rpmdir /opt/ambari_repo/official-2.6.1.0-hadoop-3.0.0/hadoop-yarn"
cp -rf \
  /opt/ambari_repo/official-2.6.1.0-hadoop-3.0.0/hadoop-yarn/x86_64/hadoop_2_6_1_0_129-yarn-2.7.3.2.6.1.0-129.x86_64.rpm \
  /opt/ambari_repo/official-2.6.1.0-rebuilt-hadoop-3.0.0/hadoop/x86_64/hadoop_2_6_1_0_129-yarn-2.7.3.2.6.1.0-129.x86_64.rpm
/opt/create_repo.sh \
  -v official-2.6.1.0-rebuilt-hadoop-3.0.0 -d /root/hadoop
/opt/sync_repo.sh \
  -v official-2.6.1.0-rebuilt-hadoop-3.0.0 -d /root/hadoop
