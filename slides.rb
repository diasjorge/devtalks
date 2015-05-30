# encoding: utf-8
# To run use: https://github.com/fxn/tkn

center <<-EOS
  Jorge Dias
  #{b "The rise of containers"}
EOS

section "About me" do
  block <<-EOS
    Devops @ Xing / Development & Testing infrastructure

    Github @diasjorge / Twitter @dias_jorge
  EOS
end

section "Virtualization" do
  block <<-EOS
    Hardware level virtualization
  EOS

  block <<-EOS
    Started at the 60s as a method of logically dividing the system resources provided by mainframe computers
EOS

  block <<-EOS
+---------+----------+
|  App A  |  App B   |
+---------+----------+
|Bins/Libs|Bins/Libs |
+---------+----------+
|Guest OS | Guest OS |
+---------+----------+
|    Hypservisor     |
+--------------------+
|      Host OS       |
+--------------------+
|       Server       |
+--------------------+
  EOS

  block <<-EOS
Advantages

Can run legacy stack unmodified

Can mix and match operative systems
EOS

  block <<-EOS
Disadvantages

Big performance penalty

Virtualized Application includes application and dependencies but also entire Guest OS
EOS
end


section "Containers" do
  block <<-EOS
    OS level virtualization
  EOS

  block <<-EOS
    Free BSD Jails - chroot

    Solaris zones

    Open-VZ

    LXC
EOS

  block <<-EOS
+---------+----------+
|  App A  |  App B   |
+---------+----------+
|Bins/Libs|Bins/Libs |
+---------+----------+
|   Docker Engine    |
+--------------------+
|      Host OS       |
+--------------------+
|       Server       |
+--------------------+
  EOS

  block <<-EOS
Advantages

Container includes only application and dependencies

Container runs as an isolated process sharing the kernel with other containers

Full Speed

Better sharing of resources like RAM
EOS

  block <<-EOS
Disadvantages

Only can run one OS
  EOS
end

section "Docker introduction" do
  block <<-EOS
    Docker - An open platform for distributed applications for developers and sysadmins.
  EOS

  block <<-EOS
    Docker enables apps to be quickly assembled from components
  EOS

  block <<-EOS
    Run the same app, unchanged, on laptops, data center VMs, and any cloud.
  EOS

  block <<-EOS
    Eliminates the friction between development, QA, and production environments.
  EOS
end

section "Docker for developers" do
  block <<-EOS
  EOS
end

section "Docker for operations" do
  block <<-EOS
  EOS
end

section "Challenges" do
  block <<-EOS
    Security - How we isolate containers from each other
  EOS

  block <<-EOS
    Network virtualization - How containers talk to each other
  EOS

  block <<-EOS
    Persistence - How to store your data
  EOS
end

# INfo:   https://www.joyent.com/developers/videos/docker-and-the-future-of-containers-in-production

# To Keep?
section "Booting demo" do
  #cd demo-boot; vagrant up && vagrant ssh -c 'echo Hello Bucharest'
  # docker --rm run ubuntu echo Hello Bucharest
end

section "That's all, thanks!" do
end
