.class final Lcom/oplus/compat/content/pm/PackageManagerNative$6;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/content/pm/PackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/compat/content/pm/a;


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    iget-object p0, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$6;->a:Lcom/oplus/compat/content/pm/a;

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/a;->a(Ljava/lang/String;Z)V

    return-void
.end method
