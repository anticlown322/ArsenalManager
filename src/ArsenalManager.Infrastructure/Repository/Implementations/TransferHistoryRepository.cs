﻿namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class TransferHistoryRepository(
    ApplicationDbContext context) 
    : BaseRepository<TransferHistory>(context);