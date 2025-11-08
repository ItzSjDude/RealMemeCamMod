.class public final synthetic Lcom/oplus/compat/os/-$$Lambda$CVpLiM3vyCioFOVdeo5UPa62ueU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/os/-$$Lambda$CVpLiM3vyCioFOVdeo5UPa62ueU;->f$0:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/oplus/compat/os/-$$Lambda$CVpLiM3vyCioFOVdeo5UPa62ueU;->f$0:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;->serviceDied(J)V

    return-void
.end method
