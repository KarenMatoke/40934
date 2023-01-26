
FROM crreguksba01.azurecr.io/dpg-dotnet-runtime:6.0

ENV ASPNETCORE_URLS=http://+:6600

COPY ./release .

ENTRYPOINT ["dotnet", "DPG.Store.Api.Host.dll"]

USER 10000
