.class final Lcom/oplus/compat/app/TaskSnapshotNative$1;
.super Ljava/lang/Object;
.source "TaskSnapshotNative.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/TaskSnapshotNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/compat/app/TaskSnapshotNative;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oplus/compat/app/TaskSnapshotNative;
    .locals 1

    .line 236
    new-instance p0, Lcom/oplus/compat/app/TaskSnapshotNative;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/compat/app/TaskSnapshotNative;-><init>(Landroid/os/Parcel;Lcom/oplus/compat/app/TaskSnapshotNative$1;)V

    return-object p0
.end method

.method public a(I)[Lcom/oplus/compat/app/TaskSnapshotNative;
    .locals 0

    .line 240
    new-array p0, p1, [Lcom/oplus/compat/app/TaskSnapshotNative;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lcom/oplus/compat/app/TaskSnapshotNative$1;->a(Landroid/os/Parcel;)Lcom/oplus/compat/app/TaskSnapshotNative;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lcom/oplus/compat/app/TaskSnapshotNative$1;->a(I)[Lcom/oplus/compat/app/TaskSnapshotNative;

    move-result-object p0

    return-object p0
.end method
