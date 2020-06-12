#! /usr/bin/env bash

# Install AWS ECS Tools
dotnet tool update -g Amazon.ECS.Tools

# Install AWS Lambda Tools
dotnet tool update -g Amazon.Lambda.Tools

# Install Coverlet
dotnet tool update -g coverlet.console

# Install DepGuard
dotnet tool update -g depguard

# Install FAKE CLI
dotnet tool update -g fake-cli
dotnet new -i "fake-template::*"

# Install F# Lint
dotnet tool update -g dotnet-fsharplint

# Install GitVersion
dotnet tool update -g GitVersion.Tool

# Install Paket
dotnet tool update -g paket

# Install Nuget Package Search
dotnet tool update -g dotnet-search

# Install .NET Data Encryption Tool
dotnet tool update -g dotnet-encrypto

# Install .NET SonarScanner
dotnet tool update -g dotnet-sonarscanner

# Install .NET ssh deployment tool
dotnet tool update -g dotnet-sshdeploy

# Install PowerShell Core
dotnet tool update -g powershell

# Install Report Generator
dotnet tool update -g reportgenerator

# Install XUnit CLI
dotnet tool update -g xunit-cli
