﻿namespace ArsenalManager.Domain.Models.Entities;

public class Transfer
{
    [DisplayName("ID")]
    public int TrId { get; set; }

    [DisplayName("Date")]
    public DateOnly TrDate { get; set; }

    [DisplayName("From (Storage ID)")]
    public int TrStartStorageId { get; set; }

    [DisplayName("To (Storage ID)")]
    public int TrEndStorageId { get; set; }

    [DisplayName("Resource ID")]
    public int TrResId { get; set; }

    public virtual Storage TrEndStorage { get; set; } = null!;

    public virtual Resource TrRes { get; set; } = null!;

    public virtual Storage TrStartStorage { get; set; } = null!;

    public virtual ICollection<Personnel> PtPs { get; set; } = new List<Personnel>();
}
