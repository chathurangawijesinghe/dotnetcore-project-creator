@echo off 

set sln = Solution
set namespace=Kaddis.Bookshop

rem mkdir Solution
dotnet new sln

rem add API
set projectName=Common
dotnet new webapp --output APIs/%projectName%/%namespace%.APIs.%projectName% --name %namespace%.APIs.%projectName%
dotnet sln TestCLI.sln add  APIs/%projectName%/%namespace%.APIs.%projectName%/%namespace%.APIs.%projectName%.csproj

rem add Facades
set projectName=Common
dotnet new webapp --output Facades/%projectName%/%namespace%.Facades.%projectName% --name %namespace%.Facades.%projectName%
dotnet sln TestCLI.sln add  Facades/%projectName%/%namespace%.Facades.%projectName%/%namespace%.Facades.%projectName%.csproj

set projectName=ICommon
dotnet new webapp --output Facades/%projectName%/%namespace%.Facades.%projectName% --name %namespace%.Facades.%projectName%
dotnet sln TestCLI.sln add  Facades/%projectName%/%namespace%.Facades.%projectName%/%namespace%.Facades.%projectName%.csproj

rem add Core
set projectName=Common.Application
dotnet new webapp --output Core/%projectName%/%namespace%.Core.%projectName% --name %namespace%.Core.%projectName%
dotnet sln TestCLI.sln add  Core/%projectName%/%namespace%.Core.%projectName%/%namespace%.Core.%projectName%.csproj
dotnet new cs 
set projectName=Common.Domain
dotnet new webapp --output Core/%projectName%/%namespace%.Core.%projectName% --name %namespace%.Core.%projectName%
dotnet sln TestCLI.sln add  Core/%projectName%/%namespace%.Core.%projectName%/%namespace%.Core.%projectName%.csproj


pause