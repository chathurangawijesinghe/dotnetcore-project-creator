@echo off 

set sln = identityserver4
set namespace=Kaddis.Dahampasal

rem mkdir Solution
dotnet new sln --name %sln%

rem add API
set projectName=Common
dotnet new webapp --output APIs/%projectName%/%namespace%.APIs.%projectName% --name %namespace%.APIs.%projectName%
dotnet sln Solution.sln add  APIs/%projectName%/%namespace%.APIs.%projectName%/%namespace%.APIs.%projectName%.csproj

rem add Facades
set projectName=Common
set folderName=Common
dotnet new classlib --output Facades/%folderName%/%namespace%.Facades.%projectName% --name %namespace%.Facades.%projectName%
dotnet sln Solution.sln add  Facades/%folderName%/%namespace%.Facades.%projectName%/%namespace%.Facades.%projectName%.csproj

set projectName=ICommon
set folderName=Common
dotnet new classlib --output Facades/%folderName%/%namespace%.Facades.%projectName% --name %namespace%.Facades.%projectName%
dotnet sln Solution.sln add  Facades/%folderName%/%namespace%.Facades.%projectName%/%namespace%.Facades.%projectName%.csproj

rem add Core
set projectName=Common.Application
set folderName=Common/Application
dotnet new classlib --output Core/%folderName%/%namespace%.Core.%projectName% --name %namespace%.Core.%projectName%
dotnet sln Solution.sln add  Core/%folderName%/%namespace%.Core.%projectName%/%namespace%.Core.%projectName%.csproj

set projectName=Common.Domain
set folderName=Common/Domain
dotnet new classlib --output Core/%folderName%/%namespace%.Core.%projectName% --name %namespace%.Core.%projectName%
dotnet sln Solution.sln add  Core/%folderName%/%namespace%.Core.%projectName%/%namespace%.Core.%projectName%.csproj


pause