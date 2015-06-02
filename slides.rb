# encoding: utf-8
# To run use: https://github.com/fxn/tkn

center <<-EOS
  #{b "The rise of containers"}

  Jorge Dias
EOS

section "Introduction" do
  block "salut Bucuresti"

  block <<-EOS
    Devops @ Xing / Development & Testing infrastructure

    Blog mrdias.com

    Github @diasjorge / Twitter @dias_jorge
  EOS

  block "Containers, Containers, Containers"
end

section "Virtualization" do
  block <<EOS
    Hardware level virtualization
  EOS

  block <<-EOS
    Started at the 60s

    Way of running old code on new hardware

    Method to divide system resources
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

  block "Advantages
"

  block <<-EOS
Can run legacy stack unmodified

Can mix and match operative systems
EOS

  block "Disadvantages
"

  block <<-EOS
Big performance penalty

Virtualized Application includes application
and dependencies but also entire Guest OS
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

  block "Advantages"

  block <<-EOS
Full Speed

Better sharing of resources like RAM, CPU

Container includes only application
and dependencies

EOS

  block "Disadvantages"

  block <<-EOS
Only can run one OS
  EOS
end

section "Docker introduction" do
  block <<-EOS
    An open platform for distributed applications

    for developers and sysadmins.
  EOS

  block <<-EOS
    Docker enables apps to be quickly assembled from components
  EOS

  block <<-EOS
    Run the same app, #{b "unchanged"},

    on laptops, data center VMs, and any cloud.
  EOS

  block <<-EOS
    Eliminates the friction between development,

    QA, and production environments.
  EOS
end

section "Docker for developers" do
  block "Why is it so popular?
"

  block "Good user experience
"

  block <<-EOS
Build any app in any language using any toolchain
EOS

  block <<EOS
“Dockerized” apps are completely portable and can run anywhere
EOS

  block "Easy to compose and integrate different services
"
end

section "Docker for operations" do
  block <<-EOS
Standardized environments

Dev, QA, staging, production
  EOS

  block "
Flexibility to distribute where things run
"

  block "
Better resources utilization
"

  block "
Easily scale up and down
"
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
