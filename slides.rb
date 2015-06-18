# encoding: utf-8
# To run use: https://github.com/fxn/tkn

center <<-EOS
  #{b "The rise of containers"}

  Jorge Dias
EOS

section "Introduction" do
  block <<-EOS
    salut Bucuresti
  EOS

  block <<-EOS
    Devops Enginner @ XING

    mrdias.com

    @dias_jorge
  EOS

  block <<-EOS
    Containers
  EOS
end

section "Virtualization" do
  block <<-EOS
    Hardware level virtualization
  EOS

  block <<-EOS
    Started at the 60s

    Way of running old code on new hardware

    Method to divide system resources
  EOS

  block <<-EOS
    +-----------+-----------+
    |   App A   |   App B   |
    +-----------+-----------+
    | Bins/Libs | Bins/Libs |
    +-----------+-----------+
    | Guest OS  | Guest OS  |
    +-----------+-----------+
    |      Hypervisor       |
    +-----------------------+
    |        Host OS        |
    +-----------------------+
    |        Server         |
    +-----------------------+
  EOS

  block <<-EOS
    Advantages
  EOS

  block <<-EOS
    Can run legacy stack unmodified
  EOS

  block <<-EOS
    Can mix and match operative systems
  EOS

  block <<-EOS
    Disadvantages
  EOS

  block <<-EOS
    Big performance impact
  EOS

  block <<-EOS
    Virtual Machine includes application,

    dependencies and Guest OS
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
    +-----------+-----------+
    |   App A   |   App B   |
    +-----------+-----------+
    | Bins/Libs | Bins/Libs |
    +-----------+-----------+
    |     Docker Engine     |
    +-----------------------+
    |        Host OS        |
    +-----------------------+
    |        Server         |
    +-----------------------+
  EOS

  block <<-EOS
          Virtualization              Containers
    +-----------+-----------+ +-----------+-----------+
    |   App A   |   App B   | |   App A   |   App B   |
    +-----------+-----------+ +-----------+-----------+
    | Bins/Libs | Bins/Libs | | Bins/Libs | Bins/Libs |
    +-----------+-----------+ +-----------+-----------+
    | Guest OS  | Guest OS  | |     Docker Engine     |
    +-----------+-----------+ +-----------------------+
    |      Hypervisor       | |        Host OS        |
    +-----------------------+ +-----------------------+
    |        Host OS        | |        Server         |
    +-----------------------+ +-----------------------+
    |        Server         |
    +-----------------------+
  EOS

  block <<-EOS
    Advantages
  EOS

  block <<-EOS
    Full Speed
  EOS

  block <<-EOS
    Better sharing of resources like RAM, CPU
  EOS

  block <<-EOS
    Container includes only application

    and dependencies
  EOS

  block <<-EOS
    Disadvantages
  EOS

  block <<-EOS
    Only can run one OS

    (But you can mix Linux distributions)
  EOS
end

section "Docker introduction" do
  block <<-EOS
    An open platform for distributed applications

    for developers and sysadmins.
  EOS

  block <<-EOS
    Docker enables apps to be quickly

    assembled from components
  EOS

  block <<-EOS
    Run the same app, #{b "UNCHANGED"},

    on laptops, data center VMs, and any cloud.
  EOS

  block <<-EOS
    Eliminates the friction between development,

    QA, and production environments.
  EOS
end

section "Docker for developers" do
  block <<-EOS
    Why is it so popular?
  EOS

  block <<-EOS
    Good user experience
  EOS

  block <<-EOS
    Build any app in any language

    using any toolchain
  EOS

  block <<-EOS
    Forget installing and compiling

    libraries locally
  EOS

  block <<-EOS
    Easy to use exact versions

    of external services
  EOS

  block <<-EOS
    Dockerized apps are completely portable

    and can run anywhere
  EOS

  block <<-EOS
    Easy to compose and integrate

    different services
  EOS

  block <<-EOS
    The distribution model

    Apt for applications
  EOS
end

section "Docker for operations" do
  block <<-EOS
    Standardized environments

    Dev, QA, staging, production
  EOS

  block <<-EOS
    Flexibility to distribute

    where things run
  EOS

  block <<-EOS
    Better resources utilization
  EOS

  block <<-EOS
    Easily scale up and down
  EOS
end

section "Dockerizing my apps" do
  block <<-EOS
    What should I do?
  EOS

  block <<-EOS
    The Twelve-Factor app
  EOS

  block <<-EOS
    Store configuration in the environment
  EOS

  block <<-EOS
    Treat backing services

    as attached resources
  EOS

  block <<-EOS
    Execute the app as one or more

    stateless processes
  EOS

  block <<-EOS
    Maximize robustness with fast startup

    and graceful shutdown
  EOS

  block <<-EOS
    Treat logs as event streams
  EOS
end

section "Challenges" do
  block <<-EOS
    Service discovery and registration

    Where are things running?
  EOS

  block <<-EOS
    Networking

    How do containers talk to each other?
  EOS

  block <<-EOS
    Persistence

    How do we store data?
  EOS

  block <<-EOS
    Security

    How do we isolate containers from each other?
  EOS
end

section "Service discovery demo" do
  block <<-EOS
                    +---+
                    |App|
                    +---+
                      |
                      V
    +-------+     +------+     +-----------+
    |Haproxy|---->|Consul|<----|Registrator|
    +-------+     +------+     +-----------+
                                      |
                                      V
                                  +------+
                                  |Docker|
                                  |events|
                                  +------+
  EOS

  center <<-EOS
    Show time!
  EOS
end

section "That's all, thanks!" do
end
