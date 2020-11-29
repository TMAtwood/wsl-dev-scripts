#!/usr/bin/env bash

# Update AWS ECS Tools
dotnet tool update -g Amazon.ECS.Tools

# Update AWS Lambda Tools
dotnet tool update -g Amazon.Lambda.Tools

# Update Coverlet
dotnet tool update -g coverlet.console

# Update DepGuard
dotnet tool update -g depguard

# Update FAKE CLI
dotnet tool update -g fake-cli
dotnet new -i "fake-template::*"

# Update F# Lint
dotnet tool update -g dotnet-fsharplint

# Update GitVersion
dotnet tool update -g GitVersion.Tool

# Update Paket
dotnet tool update -g paket

# Update Nuget Package Search
dotnet tool update -g dotnet-search

# Update .NET Data Encryption Tool
dotnet tool update -g dotnet-encrypto

# Update .NET SonarScanner
dotnet tool update -g dotnet-sonarscanner

# Update .NET ssh deployment tool
dotnet tool update -g dotnet-sshdeploy

# Update PowerShell Core
dotnet tool update -g powershell

# Update Report Generator
dotnet tool update -g dotnet-reportgenerator-globaltool

# Update XUnit CLI
dotnet tool update -g xunit-cli
