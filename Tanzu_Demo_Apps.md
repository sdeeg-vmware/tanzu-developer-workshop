# Tanzu Demo Apps

As part of demonstrating the value of Tanzu products, it's useful to have a set of applications to use.  Especially if you want to dive into Spring concepts, like I do.

These are the apps in the demo suite and how they relate to each other.

![Demo Application Architecture](./images/tanzu_demo_apps.jpg)
([miro](https://miro.com/app/board/uXjVNWvnuFw=/#tpicker-content) - internal)

## The Applications

All the applications are targeted to run as Workloads on Tanzu Application Platform.  They can of course
be run on any K8s, Tanzu Application Service, containers, stand alone, etc..

### MCP

A UI and Service in a single application based on the Spring Modulith project/opinions.

#### UI

The MCP UI shows:

- The Oracle (retrieves data from Horoscope module)
- 8Ball (calls 8Ball Service)
- TTT (embeded)
- Link out to sqlrunner (maybe)

#### Horoscope

This module in MCP is basically a simple sentence generator.  It uses a data set that contains entries
for various pieces of grammer, and randomly builds a sentence (or 2 or 3).  The default data set is
for random horoscopes.

### TTT

[GitHub](https://github.com/sdeeg-vmware/ttt)

Tic Tac Toe.  Two parts.  A UI to interact with the user, and a Service that manages games.  There is
a UI that is embedable.

### sqlrunner

[GitHub](https://github.com/sdeeg-vmware/sqlrunner)

Kotlin/Spring application that can be used to make queries to a database via JDBC.

## Security

Security will be challenging as I look to propogate call through various routes.