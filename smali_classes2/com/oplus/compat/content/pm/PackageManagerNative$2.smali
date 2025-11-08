.class final Lcom/oplus/compat/content/pm/PackageManagerNative$2;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
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
.field final synthetic a:Lcom/oplus/compat/content/pm/b;


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$2;->a:Lcom/oplus/compat/content/pm/b;

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/b;->a(Ljava/lang/String;I)V

    return-void
.end method
