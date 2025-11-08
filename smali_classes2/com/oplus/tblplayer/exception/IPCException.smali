.class public Lcom/oplus/tblplayer/exception/IPCException;
.super Ljava/lang/RuntimeException;
.source "IPCException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/tblplayer/exception/IPCException;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_CAUSE:I = 0x1

.field private static final NO_CAUSE:I


# instance fields
.field private final mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/oplus/tblplayer/exception/IPCException$1;

    invoke-direct {v0}, Lcom/oplus/tblplayer/exception/IPCException$1;-><init>()V

    sput-object v0, Lcom/oplus/tblplayer/exception/IPCException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oplus/tblplayer/exception/IPCException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    new-array v1, v0, [Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 87
    new-instance v4, Ljava/lang/StackTraceElement;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oplus/tblplayer/exception/IPCException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 97
    new-instance v0, Lcom/oplus/tblplayer/exception/IPCException;

    invoke-direct {v0, p1}, Lcom/oplus/tblplayer/exception/IPCException;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/exception/IPCException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/oplus/tblplayer/exception/IPCException;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public static toIPCException(Ljava/lang/Throwable;)Lcom/oplus/tblplayer/exception/IPCException;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    instance-of v0, p0, Lcom/oplus/tblplayer/exception/IPCException;

    if-eqz v0, :cond_1

    .line 61
    check-cast p0, Lcom/oplus/tblplayer/exception/IPCException;

    return-object p0

    .line 63
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v3, Lcom/oplus/tblplayer/exception/IPCException;

    invoke-direct {v3, v0, v2}, Lcom/oplus/tblplayer/exception/IPCException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3, v1}, Lcom/oplus/tblplayer/exception/IPCException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/tblplayer/exception/IPCException;->toIPCException(Ljava/lang/Throwable;)Lcom/oplus/tblplayer/exception/IPCException;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/oplus/tblplayer/exception/IPCException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/tblplayer/exception/IPCException;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public toIOException()Ljava/io/IOException;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/exception/IPCException;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/exception/IPCException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/oplus/tblplayer/exception/IPCException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 77
    invoke-virtual {p0}, Lcom/oplus/tblplayer/exception/IPCException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/IOException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/oplus/tblplayer/exception/IPCException;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/oplus/tblplayer/exception/IPCException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/oplus/tblplayer/exception/IPCException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 117
    :cond_0
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 119
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/tblplayer/exception/IPCException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 129
    instance-of v0, p0, Lcom/oplus/tblplayer/exception/IPCException;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    check-cast p0, Lcom/oplus/tblplayer/exception/IPCException;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/exception/IPCException;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 134
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return-void
.end method
