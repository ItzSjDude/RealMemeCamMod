.class Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative$1;
.super Lcom/oplus/inner/os/IHwBinderWrapper$DeathRecipientWrapper;
.source "IHwBinderNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;


# direct methods
.method constructor <init>(Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative$1;->this$0:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;

    invoke-direct {p0}, Lcom/oplus/inner/os/IHwBinderWrapper$DeathRecipientWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative$1;->this$0:Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/compat/os/IHwBinderNative$DeathRecipientNative;->serviceDied(J)V

    return-void
.end method
