.class Lcom/oplus/compat/content/pm/PackageManagerNative$PackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/content/pm/PackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageDataObserver"
.end annotation


# instance fields
.field private a:Lcom/oplus/compat/content/pm/a;


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    iget-object p0, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$PackageDataObserver;->a:Lcom/oplus/compat/content/pm/a;

    if-eqz p0, :cond_0

    .line 754
    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/a;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
