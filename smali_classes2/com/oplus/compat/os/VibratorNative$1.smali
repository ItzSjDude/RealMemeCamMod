.class final Lcom/oplus/compat/os/VibratorNative$1;
.super Ljava/lang/Object;
.source "VibratorNative.java"

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/os/VibratorNative;->addVibratorStateListener(Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;


# direct methods
.method constructor <init>(Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/oplus/compat/os/VibratorNative$1;->val$listener:Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/oplus/epona/Response;)V
    .locals 1

    .line 230
    invoke-virtual {p1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 232
    iget-object p0, p0, Lcom/oplus/compat/os/VibratorNative$1;->val$listener:Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;

    const-string v0, "isVibrating"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;->onVibratorStateChanged(Z)V

    :cond_0
    return-void
.end method
