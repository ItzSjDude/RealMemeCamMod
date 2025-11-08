.class public final synthetic Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$FR4PEsLfF-CF_kRPXzCtUb8_Zzg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/capmode/BaseMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$FR4PEsLfF-CF_kRPXzCtUb8_Zzg;->f$0:Lcom/oplus/camera/capmode/BaseMode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$FR4PEsLfF-CF_kRPXzCtUb8_Zzg;->f$0:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->lambda$pictureTakenCallback$0$BaseMode()V

    return-void
.end method
