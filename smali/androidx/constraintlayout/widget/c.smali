.class public Landroidx/constraintlayout/widget/c;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/c$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static c:Landroid/util/SparseIntArray;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 195
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/constraintlayout/widget/c;->a:[I

    .line 200
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    .line 274
    sget-object v1, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v1, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v1, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v1, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v1, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v1, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v1, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v1, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 289
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 290
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 292
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 294
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 295
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 300
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 301
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 302
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 324
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 341
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 345
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 348
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 349
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 350
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_constraint_referenced_ids:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    sget-object v0, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 2181
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2183
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_0
    return p2
.end method

.method private a(I)Landroidx/constraintlayout/widget/c$a;
    .locals 4

    .line 2110
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2111
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/c$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/c$a;-><init>(Landroidx/constraintlayout/widget/c$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/c$a;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/c$a;
    .locals 2

    .line 2189
    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/widget/c$a;-><init>(Landroidx/constraintlayout/widget/c$1;)V

    .line 2190
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2191
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/c$a;Landroid/content/res/TypedArray;)V

    .line 2192
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private a(Landroidx/constraintlayout/widget/c$a;Landroid/content/res/TypedArray;)V
    .locals 6

    .line 2197
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 2199
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 2238
    sget-object v2, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "   "

    const-string v5, "ConstraintSet"

    packed-switch v2, :pswitch_data_2

    .line 2436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2436
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2432
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unused attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2433
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/constraintlayout/widget/c;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2432
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2429
    :pswitch_1
    iget-boolean v2, p1, Landroidx/constraintlayout/widget/c$a;->ar:Z

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p1, Landroidx/constraintlayout/widget/c$a;->ar:Z

    goto/16 :goto_1

    .line 2426
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroidx/constraintlayout/widget/c$a;->av:Ljava/lang/String;

    goto/16 :goto_1

    .line 2423
    :pswitch_3
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->as:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->as:I

    goto/16 :goto_1

    :pswitch_4
    const-string v1, "CURRENTLY UNSUPPORTED"

    .line 2419
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2416
    :pswitch_5
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->aq:F

    goto/16 :goto_1

    .line 2413
    :pswitch_6
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->ap:F

    goto/16 :goto_1

    .line 2303
    :pswitch_7
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->z:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->z:F

    goto/16 :goto_1

    .line 2300
    :pswitch_8
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->y:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->y:I

    goto/16 :goto_1

    .line 2297
    :pswitch_9
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->x:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->x:I

    goto/16 :goto_1

    .line 2365
    :pswitch_a
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->X:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->X:F

    goto/16 :goto_1

    .line 2392
    :pswitch_b
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->ag:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->ag:F

    goto/16 :goto_1

    .line 2389
    :pswitch_c
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->af:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->af:F

    goto/16 :goto_1

    .line 2386
    :pswitch_d
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->ae:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->ae:F

    goto/16 :goto_1

    .line 2383
    :pswitch_e
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->ad:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->ad:F

    goto/16 :goto_1

    .line 2380
    :pswitch_f
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->ac:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->ac:F

    goto/16 :goto_1

    .line 2377
    :pswitch_10
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->ab:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->ab:F

    goto/16 :goto_1

    .line 2374
    :pswitch_11
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->aa:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->aa:F

    goto/16 :goto_1

    .line 2371
    :pswitch_12
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->Z:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->Z:F

    goto/16 :goto_1

    .line 2368
    :pswitch_13
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->Y:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->Y:F

    goto/16 :goto_1

    :pswitch_14
    const/4 v2, 0x1

    .line 2361
    iput-boolean v2, p1, Landroidx/constraintlayout/widget/c$a;->V:Z

    .line 2362
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->W:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->W:F

    goto/16 :goto_1

    .line 2358
    :pswitch_15
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->U:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->U:F

    goto/16 :goto_1

    .line 2401
    :pswitch_16
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->T:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->T:I

    goto/16 :goto_1

    .line 2404
    :pswitch_17
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->S:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->S:I

    goto/16 :goto_1

    .line 2395
    :pswitch_18
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->Q:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->Q:F

    goto/16 :goto_1

    .line 2398
    :pswitch_19
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->R:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->R:F

    goto/16 :goto_1

    .line 2407
    :pswitch_1a
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->d:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->d:I

    goto/16 :goto_1

    .line 2327
    :pswitch_1b
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->v:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->v:F

    goto/16 :goto_1

    .line 2252
    :pswitch_1c
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->l:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->l:I

    goto/16 :goto_1

    .line 2255
    :pswitch_1d
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->m:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->m:I

    goto/16 :goto_1

    .line 2342
    :pswitch_1e
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->F:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->F:I

    goto/16 :goto_1

    .line 2288
    :pswitch_1f
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->r:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->r:I

    goto/16 :goto_1

    .line 2285
    :pswitch_20
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->q:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->q:I

    goto/16 :goto_1

    .line 2336
    :pswitch_21
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->I:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->I:I

    goto/16 :goto_1

    .line 2249
    :pswitch_22
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->k:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->k:I

    goto/16 :goto_1

    .line 2246
    :pswitch_23
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->j:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->j:I

    goto/16 :goto_1

    .line 2333
    :pswitch_24
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->E:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->E:I

    goto/16 :goto_1

    .line 2282
    :pswitch_25
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->C:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->C:I

    goto/16 :goto_1

    .line 2243
    :pswitch_26
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->i:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->i:I

    goto/16 :goto_1

    .line 2240
    :pswitch_27
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->h:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->h:I

    goto/16 :goto_1

    .line 2330
    :pswitch_28
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->D:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->D:I

    goto/16 :goto_1

    .line 2348
    :pswitch_29
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->b:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->b:I

    goto/16 :goto_1

    .line 2354
    :pswitch_2a
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->J:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->J:I

    .line 2355
    sget-object v1, Landroidx/constraintlayout/widget/c;->a:[I

    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->J:I

    aget v1, v1, v2

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->J:I

    goto/16 :goto_1

    .line 2351
    :pswitch_2b
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->c:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->c:I

    goto/16 :goto_1

    .line 2324
    :pswitch_2c
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->u:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->u:F

    goto/16 :goto_1

    .line 2279
    :pswitch_2d
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->g:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->g:F

    goto/16 :goto_1

    .line 2276
    :pswitch_2e
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->f:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->f:I

    goto/16 :goto_1

    .line 2273
    :pswitch_2f
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->e:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->e:I

    goto/16 :goto_1

    .line 2309
    :pswitch_30
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->L:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->L:I

    goto/16 :goto_1

    .line 2318
    :pswitch_31
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->P:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->P:I

    goto/16 :goto_1

    .line 2312
    :pswitch_32
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->M:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->M:I

    goto/16 :goto_1

    .line 2306
    :pswitch_33
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->K:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->K:I

    goto/16 :goto_1

    .line 2321
    :pswitch_34
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->O:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->O:I

    goto :goto_1

    .line 2315
    :pswitch_35
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->N:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->N:I

    goto :goto_1

    .line 2291
    :pswitch_36
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->s:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->s:I

    goto :goto_1

    .line 2294
    :pswitch_37
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->t:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->t:I

    goto :goto_1

    .line 2339
    :pswitch_38
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->H:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->H:I

    goto :goto_1

    .line 2270
    :pswitch_39
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->B:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->B:I

    goto :goto_1

    .line 2267
    :pswitch_3a
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->A:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->A:I

    goto :goto_1

    .line 2410
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroidx/constraintlayout/widget/c$a;->w:Ljava/lang/String;

    goto :goto_1

    .line 2258
    :pswitch_3c
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->n:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->n:I

    goto :goto_1

    .line 2261
    :pswitch_3d
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->o:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->o:I

    goto :goto_1

    .line 2345
    :pswitch_3e
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->G:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->G:I

    goto :goto_1

    .line 2264
    :pswitch_3f
    iget v2, p1, Landroidx/constraintlayout/widget/c$a;->p:I

    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/c$a;->p:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)[I
    .locals 8

    const-string p0, ","

    .line 2443
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2444
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 2445
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2447
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 2448
    aget-object v4, p0, v2

    .line 2449
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2452
    :try_start_0
    const-class v5, Landroidx/constraintlayout/widget/R$id;

    .line 2453
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    .line 2454
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v5, v1

    :goto_1
    if-nez v5, :cond_0

    .line 2460
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2461
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    .line 2460
    invoke-virtual {v5, v4, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :cond_0
    if-nez v5, :cond_1

    .line 2464
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_1

    .line 2465
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2466
    invoke-virtual {v6, v1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2467
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 2468
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 2471
    aput v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 2473
    :cond_2
    array-length p0, p0

    if-eq v3, p0, :cond_3

    .line 2474
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "undefined"

    return-object p0

    :pswitch_0
    const-string p0, "end"

    return-object p0

    :pswitch_1
    const-string p0, "start"

    return-object p0

    :pswitch_2
    const-string p0, "baseline"

    return-object p0

    :pswitch_3
    const-string p0, "bottom"

    return-object p0

    :pswitch_4
    const-string p0, "top"

    return-object p0

    :pswitch_5
    const-string p0, "right"

    return-object p0

    :pswitch_6
    const-string p0, "left"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 1714
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/c;->a(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p0

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->c:I

    return-void
.end method

.method public a(IIII)V
    .locals 9

    .line 1219
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/c$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/c$a;-><init>(Landroidx/constraintlayout/widget/c$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/c$a;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v6, "right to "

    const-string v7, " undefined"

    const/4 v8, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1307
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1308
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/c;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/c;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " unknown"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-ne p4, v1, :cond_1

    .line 1297
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->t:I

    .line 1298
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->s:I

    goto/16 :goto_0

    :cond_1
    if-ne p4, v2, :cond_2

    .line 1300
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->s:I

    .line 1301
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->t:I

    goto/16 :goto_0

    .line 1303
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/c;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-ne p4, v2, :cond_3

    .line 1286
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->r:I

    .line 1287
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->q:I

    goto/16 :goto_0

    :cond_3
    if-ne p4, v1, :cond_4

    .line 1289
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->q:I

    .line 1290
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->r:I

    goto/16 :goto_0

    .line 1292
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/c;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const/4 p2, 0x5

    if-ne p4, p2, :cond_5

    .line 1275
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->p:I

    .line 1276
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->o:I

    .line 1277
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->n:I

    .line 1278
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->l:I

    .line 1279
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->m:I

    goto/16 :goto_0

    .line 1281
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/c;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-ne p4, v3, :cond_6

    .line 1262
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->o:I

    .line 1263
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->n:I

    .line 1264
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->p:I

    goto/16 :goto_0

    :cond_6
    if-ne p4, v4, :cond_7

    .line 1266
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->n:I

    .line 1267
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->o:I

    .line 1268
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->p:I

    goto/16 :goto_0

    .line 1270
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/c;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-ne p4, v4, :cond_8

    .line 1249
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->l:I

    .line 1250
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->m:I

    .line 1251
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->p:I

    goto :goto_0

    :cond_8
    if-ne p4, v3, :cond_9

    .line 1253
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->m:I

    .line 1254
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->l:I

    .line 1255
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->p:I

    goto :goto_0

    .line 1257
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/c;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    if-ne p4, v5, :cond_a

    .line 1237
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->j:I

    .line 1238
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->k:I

    goto :goto_0

    :cond_a
    if-ne p4, v0, :cond_b

    .line 1241
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->k:I

    .line 1242
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->j:I

    goto :goto_0

    .line 1244
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/c;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    if-ne p4, v5, :cond_c

    .line 1226
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->h:I

    .line 1227
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->i:I

    goto :goto_0

    :cond_c
    if-ne p4, v0, :cond_d

    .line 1229
    iput p3, p1, Landroidx/constraintlayout/widget/c$a;->i:I

    .line 1230
    iput v8, p1, Landroidx/constraintlayout/widget/c$a;->h:I

    :goto_0
    return-void

    .line 1232
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "left to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/c;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;I)V
    .locals 4

    .line 2145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2146
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 2151
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    .line 2159
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2160
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/c$a;

    move-result-object v2

    const-string v3, "Guideline"

    .line 2161
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2162
    iput-boolean v1, v2, Landroidx/constraintlayout/widget/c$a;->a:Z

    .line 2164
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    iget v1, v2, Landroidx/constraintlayout/widget/c$a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2156
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2153
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2176
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 2174
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 10

    .line 705
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 706
    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 708
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 709
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 711
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 715
    iget-object v5, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 716
    iget-object v5, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/c$a;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/constraintlayout/widget/c$a;-><init>(Landroidx/constraintlayout/widget/c$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/c$a;

    .line 719
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/c$a;ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 720
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->J:I

    .line 721
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_3

    .line 722
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->U:F

    .line 723
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->X:F

    .line 724
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->Y:F

    .line 725
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->Z:F

    .line 726
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->aa:F

    .line 727
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->ab:F

    .line 729
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v3

    .line 730
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v4

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    float-to-double v6, v4

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    .line 733
    :cond_1
    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->ac:F

    .line 734
    iput v4, v5, Landroidx/constraintlayout/widget/c$a;->ad:F

    .line 737
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->ae:F

    .line 738
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->af:F

    .line 739
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    .line 740
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->ag:F

    .line 741
    iget-boolean v3, v5, Landroidx/constraintlayout/widget/c$a;->V:Z

    if-eqz v3, :cond_3

    .line 742
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/widget/c$a;->W:F

    .line 746
    :cond_3
    instance-of v3, v2, Landroidx/constraintlayout/widget/a;

    if-eqz v3, :cond_4

    .line 747
    check-cast v2, Landroidx/constraintlayout/widget/a;

    .line 748
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/a;->a()Z

    move-result v3

    iput-boolean v3, v5, Landroidx/constraintlayout/widget/c$a;->ar:Z

    .line 749
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/a;->getReferencedIds()[I

    move-result-object v3

    iput-object v3, v5, Landroidx/constraintlayout/widget/c$a;->au:[I

    .line 750
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/a;->getType()I

    move-result v2

    iput v2, v5, Landroidx/constraintlayout/widget/c$a;->as:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 713
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/d;)V
    .locals 9

    .line 761
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/d;->getChildCount()I

    move-result v0

    .line 762
    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 764
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 765
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/d$a;

    .line 767
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 771
    iget-object v5, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 772
    iget-object v5, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/c$a;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/constraintlayout/widget/c$a;-><init>(Landroidx/constraintlayout/widget/c$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/c$a;

    .line 775
    instance-of v6, v2, Landroidx/constraintlayout/widget/b;

    if-eqz v6, :cond_1

    .line 776
    check-cast v2, Landroidx/constraintlayout/widget/b;

    .line 777
    invoke-static {v5, v2, v4, v3}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/c$a;Landroidx/constraintlayout/widget/b;ILandroidx/constraintlayout/widget/d$a;)V

    .line 779
    :cond_1
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/c$a;ILandroidx/constraintlayout/widget/d$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1727
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/c;->a(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p0

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->b:I

    return-void
.end method

.method public b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 789
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 p0, 0x0

    .line 790
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/c;)V

    return-void
.end method

.method c(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 9

    .line 797
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 798
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_8

    .line 801
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 802
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v3, :cond_7

    .line 806
    iget-object v7, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 807
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v7, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/c$a;

    .line 809
    instance-of v8, v5, Landroidx/constraintlayout/widget/a;

    if-eqz v8, :cond_0

    .line 810
    iput v4, v7, Landroidx/constraintlayout/widget/c$a;->at:I

    .line 812
    :cond_0
    iget v8, v7, Landroidx/constraintlayout/widget/c$a;->at:I

    if-eq v8, v3, :cond_3

    .line 813
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->at:I

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 815
    :cond_1
    move-object v3, v5

    check-cast v3, Landroidx/constraintlayout/widget/a;

    .line 816
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/widget/a;->setId(I)V

    .line 817
    iget v4, v7, Landroidx/constraintlayout/widget/c$a;->as:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setType(I)V

    .line 818
    iget-boolean v4, v7, Landroidx/constraintlayout/widget/c$a;->ar:Z

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setAllowsGoneWidget(Z)V

    .line 819
    iget-object v4, v7, Landroidx/constraintlayout/widget/c$a;->au:[I

    if-eqz v4, :cond_2

    .line 820
    iget-object v4, v7, Landroidx/constraintlayout/widget/c$a;->au:[I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    goto :goto_1

    .line 821
    :cond_2
    iget-object v4, v7, Landroidx/constraintlayout/widget/c$a;->av:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 822
    iget-object v4, v7, Landroidx/constraintlayout/widget/c$a;->av:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/widget/c;->a(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v7, Landroidx/constraintlayout/widget/c$a;->au:[I

    .line 824
    iget-object v4, v7, Landroidx/constraintlayout/widget/c$a;->au:[I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    .line 830
    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 831
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 832
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->J:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 834
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_6

    .line 835
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->U:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 836
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->X:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    .line 837
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->Y:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    .line 838
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->Z:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    .line 839
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->aa:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 840
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->ab:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 841
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->ac:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_4

    .line 842
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->ac:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    .line 844
    :cond_4
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->ad:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5

    .line 845
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->ad:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    .line 847
    :cond_5
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->ae:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 848
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->af:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 849
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_6

    .line 850
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->ag:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 851
    iget-boolean v3, v7, Landroidx/constraintlayout/widget/c$a;->V:Z

    if-eqz v3, :cond_6

    .line 852
    iget v3, v7, Landroidx/constraintlayout/widget/c$a;->W:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 804
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 858
    :cond_8
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 859
    iget-object v2, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/c$a;

    .line 860
    iget v5, v2, Landroidx/constraintlayout/widget/c$a;->at:I

    if-eq v5, v3, :cond_d

    .line 861
    iget v5, v2, Landroidx/constraintlayout/widget/c$a;->at:I

    if-eq v5, v4, :cond_a

    goto :goto_4

    .line 863
    :cond_a
    new-instance v5, Landroidx/constraintlayout/widget/a;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/a;-><init>(Landroid/content/Context;)V

    .line 864
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/a;->setId(I)V

    .line 865
    iget-object v6, v2, Landroidx/constraintlayout/widget/c$a;->au:[I

    if-eqz v6, :cond_b

    .line 866
    iget-object v6, v2, Landroidx/constraintlayout/widget/c$a;->au:[I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    goto :goto_3

    .line 867
    :cond_b
    iget-object v6, v2, Landroidx/constraintlayout/widget/c$a;->av:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 868
    iget-object v6, v2, Landroidx/constraintlayout/widget/c$a;->av:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/widget/c;->a(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v2, Landroidx/constraintlayout/widget/c$a;->au:[I

    .line 870
    iget-object v6, v2, Landroidx/constraintlayout/widget/c$a;->au:[I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    .line 872
    :cond_c
    :goto_3
    iget v6, v2, Landroidx/constraintlayout/widget/c$a;->as:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/a;->setType(I)V

    .line 874
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v6

    .line 875
    invoke-virtual {v5}, Landroidx/constraintlayout/widget/a;->b()V

    .line 876
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 877
    invoke-virtual {p1, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    :cond_d
    :goto_4
    iget-boolean v5, v2, Landroidx/constraintlayout/widget/c$a;->a:Z

    if-eqz v5, :cond_9

    .line 882
    new-instance v5, Landroidx/constraintlayout/widget/e;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/e;-><init>(Landroid/content/Context;)V

    .line 883
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/widget/e;->setId(I)V

    .line 884
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v1

    .line 885
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 886
    invoke-virtual {p1, v5, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_e
    return-void
.end method
