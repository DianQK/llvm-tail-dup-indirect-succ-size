; ModuleID = 'extracted2.ll'
source_filename = "/tmp/q.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-grtev4-linux-gnu"

declare dso_local i32 @hoge(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @snork.64(ptr noundef nonnull align 8 dereferenceable(1768) %arg, ptr noundef %arg1, ptr noundef %arg2) unnamed_addr #0 align 2 personality ptr @hoge {
bb:
  %i15426 = getelementptr inbounds i8, ptr %arg, i64 16
  br label %bb12

bb9:                                              ; preds = %bb19, %bb13
  %i15447.ph = phi ptr [ %i79, %bb13 ], [ %i22, %bb19 ]
  %i10 = getelementptr inbounds i8, ptr %arg, i64 8
  %i11 = tail call noundef zeroext i1 @wibble.1619(ptr noundef nonnull align 8 dereferenceable(8) %i10)
  br i1 %i11, label %bb15449, label %bb15452, !prof !3

bb12:                                             ; preds = %bb15446, %bb
  %i79 = phi ptr [ %arg1, %bb ], [ %i15447, %bb15446 ]
  %i63 = phi i32 [ 1546, %bb ], [ %i15448, %bb15446 ]
  switch i32 %i63, label %default.unreachable [
    i32 0, label %bb13
    i32 1, label %bb23
    i32 1546, label %bb15425
  ]

bb13:                                             ; preds = %bb12
  %i15 = tail call noundef nonnull align 4 dereferenceable(4) ptr @snork.65(ptr noundef nonnull align 4 dereferenceable(196) %i15426, i32 noundef 19)
  %i16 = load i32, ptr %i15, align 4, !tbaa !4
  %i17 = and i32 %i16, 2097152
  %i18 = icmp eq i32 %i17, 0
  br i1 %i18, label %bb9, label %bb19

bb19:                                             ; preds = %bb13
  %i20 = tail call noundef ptr @zot.66(ptr noundef nonnull align 8 dereferenceable(60) %arg2, ptr noundef %i79)
  %i21 = tail call noundef zeroext i1 @widget.68(ptr noundef nonnull align 8 dereferenceable(1768) %arg)
  %i22 = tail call noundef ptr @zot.67(i32 noundef 1, i1 noundef zeroext %i21, ptr noundef %i20)
  br label %bb9

bb23:                                             ; preds = %bb12
  %i25 = tail call noundef nonnull align 4 dereferenceable(4) ptr @snork.65(ptr noundef nonnull align 4 dereferenceable(196) %i15426, i32 noundef 19)
  %i26 = load i32, ptr %i25, align 4, !tbaa !4
  %i27 = and i32 %i26, 64
  %i28 = icmp eq i32 %i27, 0
  br i1 %i28, label %bb15446, label %bb29

bb29:                                             ; preds = %bb23
  %i30 = tail call noundef ptr @zot.66(ptr noundef nonnull align 8 dereferenceable(60) %arg2, ptr noundef %i79)
  %i31 = tail call noundef zeroext i1 @barney.69(ptr noundef nonnull align 8 dereferenceable(1768) %arg)
  %i32 = tail call noundef ptr @zot.67(i32 noundef 2, i1 noundef zeroext %i31, ptr noundef %i30)
  br label %bb15446

bb15425:                                          ; preds = %bb12
  %i15427 = tail call noundef nonnull align 4 dereferenceable(4) ptr @snork.65(ptr noundef nonnull align 4 dereferenceable(196) %i15426, i32 noundef 39)
  %i15428 = load i32, ptr %i15427, align 4, !tbaa !4
  %i15429 = and i32 %i15428, 8
  %i15430 = icmp eq i32 %i15429, 0
  br i1 %i15430, label %bb15446, label %bb15431

bb15431:                                          ; preds = %bb15425
  %i15432 = tail call noundef ptr @zot.66(ptr noundef nonnull align 8 dereferenceable(60) %arg2, ptr noundef %i79)
  %i15433 = tail call noundef zeroext i1 @widget.1611(ptr noundef nonnull align 8 dereferenceable(1768) %arg)
  %i15434 = tail call noundef ptr @zot.67(i32 noundef 1818, i1 noundef zeroext %i15433, ptr noundef %i15432)
  br label %bb15446

default.unreachable:                              ; preds = %bb12
  unreachable

bb15446:                                          ; preds = %bb15431, %bb15425, %bb29, %bb23
  %i15447 = phi ptr [ %i15434, %bb15431 ], [ %i79, %bb15425 ], [ %i32, %bb29 ], [ %i79, %bb23 ]
  %i15448 = add nsw i32 %i63, -1
  br label %bb12, !llvm.loop !8

bb15449:                                          ; preds = %bb9
  %i15450 = tail call noundef nonnull align 8 dereferenceable(24) ptr @barney.1621(ptr noundef nonnull align 8 dereferenceable(8) %i10, ptr noundef nonnull @widget.1622)
  %i15451 = tail call noundef ptr @wobble.1620(ptr noundef nonnull align 8 dereferenceable(24) %i15450, ptr noundef %i15447.ph, ptr noundef %arg2)
  br label %bb15452

bb15452:                                          ; preds = %bb15449, %bb9
  %i15453 = phi ptr [ %i15451, %bb15449 ], [ %i15447.ph, %bb9 ]
  ret ptr %i15453
}

; Function Attrs: mustprogress nounwind uwtable
declare dso_local noundef nonnull align 4 dereferenceable(4) ptr @snork.65(ptr noundef nonnull align 4 dereferenceable(196), i32 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
declare dso_local noundef ptr @zot.66(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local noundef ptr @zot.67(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare dso_local noundef zeroext i1 @widget.68(ptr noundef nonnull align 8 dereferenceable(1768)) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare dso_local noundef zeroext i1 @barney.69(ptr noundef nonnull align 8 dereferenceable(1768)) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare dso_local noundef zeroext i1 @widget.1611(ptr noundef nonnull align 8 dereferenceable(1768)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
declare dso_local noundef zeroext i1 @wibble.1619(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0 align 2

declare dso_local noundef ptr @wobble.1620(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare dso_local noundef nonnull align 8 dereferenceable(24) ptr @barney.1621(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0 align 2

declare dso_local noundef nonnull align 8 dereferenceable(24) ptr @widget.1622() #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"clang version a034e65e972175a2465deacb8c78bc7efc99bd23"}
!3 = !{!"branch_weights", i32 1, i32 2000}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
