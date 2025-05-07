using System.Windows;
using ArsenalManager.Application.Contracts.Services;
using ArsenalManager.Domain.Contracts.Repositories;
using ArsenalManager.Domain.Models.Entities;
using ArsenalManager.Infrastructure.Repository;
using ArsenalManager.Infrastructure.Repository.Implementations;
using ArsenalManager.Infrastructure.Services;
using ArsenalManager.PresentationWPF.MVVM.ViewModels;
using ArsenalManager.PresentationWPF.MVVM.ViewModels.Dialogs;
using ArsenalManager.PresentationWPF.MVVM.Views;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace ArsenalManager.PresentationWPF;

public partial class App
{
    private IHost _host;
    
    private void Application_Startup(object sender, StartupEventArgs e)
    {
        _host = Host.CreateDefaultBuilder()
            .ConfigureServices((context, services) =>
            {
                ConfigureDbContext(services);
                AddRepositories(services);
                services.AddScoped<IUnitOfWork, UnitOfWork>();
                services.AddSingleton<IDialogService, DialogService>();
                services.AddScoped<IProcedureService, ProcedureService>();
                AddViews(services);
                AddViewModels(services);
            })
            .Build();
        
        var mainWindow = new MainWindow
        {
            DataContext = _host.Services.GetRequiredService<MainViewModel>()
        };
        
        mainWindow.Show();
    }
    
    protected override async void OnExit(ExitEventArgs e)
    {
        await _host.StopAsync();
        _host.Dispose();
        base.OnExit(e);
    }

    private void ConfigureDbContext(IServiceCollection services)
    {
        services.AddDbContext<ApplicationDbContext>(options =>
            options.UseMySql(
                "server=localhost;port=3306;database=arsenal;user=user;password=password",
                ServerVersion.Parse("8.0.40-mysql")
            ));
    }
    
    private void AddRepositories(IServiceCollection services)
    {
        services.AddScoped<IRepository<ActiveOrder>, ActiveOrderRepository>();
        services.AddScoped<IRepository<Ammunition>, AmmunitionRepository>();
        services.AddScoped<IRepository<CommDevice>, CommDeviceRepository>();
        services.AddScoped<IRepository<EngEquipment>, EngEquipmentRepository>();
        services.AddScoped<IRepository<Equipment>, EquipmentRepository>();
        services.AddScoped<IRepository<Maintenance>, MaintenanceRepository>();
        services.AddScoped<IRepository<MedSupply>, MedSupplyRepository>();
        services.AddScoped<IRepository<Order>, OrderRepository>();
        services.AddScoped<IRepository<OrderHistory>, OrderHistoryRepository>();
        services.AddScoped<IRepository<Personnel>, PersonnelRepository>();
        services.AddScoped<IRepository<Resource>, ResourceRepository>();
        services.AddScoped<IRepository<Storage>, StorageRepository>();
        services.AddScoped<IRepository<Supplier>, SupplierRepository>();
        services.AddScoped<IRepository<Transfer>, TransferRepository>();
        services.AddScoped<IRepository<TransferHistory>, TransferHistoryRepository>();
        services.AddScoped<IRepository<Vehicle>, VehicleRepository>();
        services.AddScoped<IRepository<Weapon>, WeaponRepository>();
        services.AddScoped<IRepository<WeaponAmmunitionCompatibility>, WeaponAmmunitionCompatibilityRepository>();
        services.AddScoped<IRepository<WriteOff>, WriteOffRepository>();
    }

    private void AddViews(IServiceCollection services)
    {
        services.AddSingleton<MainWindow>();  
        services.AddSingleton<HelpView>();  
        services.AddSingleton<AboutView>();  
        services.AddSingleton<ArsenalManagerView>();  
    }

    private void AddViewModels(IServiceCollection services)
    {
        services.AddTransient<MainViewModel>();
        services.AddTransient<HelpViewModel>();
        services.AddTransient<AboutViewModel>();
        services.AddSingleton<ArsenalManagerViewModel>();
    }
}