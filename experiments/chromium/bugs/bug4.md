## Chromium Bug 4
This bug report contains information for bug4 ~ bug9.
### Sys Description
```
Stack uninit bug
Name "_ZN8perfetto15trace_processor11TraceSorter36AppendNonFtraceAndMaybeExtractEventsENS0_21TimestampedTracePieceE_164"
in
Name "_ZN8perfetto15trace_processor11TraceSorter36AppendNonFtraceAndMaybeExtractEventsENS0_21TimestampedTracePieceE"
[UnName 2,UnName 70,UnName 82,UnName 132,UnName 151,UnName 161]
"/home/jeffersonchien/all_ll_files/profile_module.ll-O2_p"
on line
6

Stack uninit bug
Name "_ZN8perfetto15trace_processor11TraceSorter36AppendNonFtraceAndMaybeExtractEventsENS0_21TimestampedTracePieceE_186"
in
Name "_ZN8perfetto15trace_processor11TraceSorter36AppendNonFtraceAndMaybeExtractEventsENS0_21TimestampedTracePieceE"
[UnName 2,UnName 70,UnName 82,UnName 132,UnName 151,UnName 183]
"/home/jeffersonchien/all_ll_files/profile_module.ll-O2_p"
on line
6
```

### LLVM Bitcode
```
; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr hidden void @_ZN8perfetto15trace_processor11TraceSorter36AppendNonFtraceAndMaybeExtractEventsENS0_21TimestampedTracePieceE(%"class.perfetto::trace_processor::TraceSorter"*, %"struct.perfetto::trace_processor::TimestampedTracePiece"*) local_unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.perfetto::trace_processor::TimestampedTracePiece", align 16
  %4 = alloca %"struct.perfetto::trace_processor::TimestampedTracePiece", align 16
  %5 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %"class.perfetto::trace_processor::TraceSorter", %"class.perfetto::trace_processor::TraceSorter"* %0, i64 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, %6
  %10 = sub nsw i64 %8, %6
  %11 = getelementptr inbounds %"class.perfetto::trace_processor::TraceSorter", %"class.perfetto::trace_processor::TraceSorter"* %0, i64 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %10, %12
  %14 = and i1 %9, %13
  br i1 %14, label %15, label %70, !prof !39

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 3
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %64 [
    i32 8, label %59
    i32 1, label %18
    i32 2, label %29
    i32 3, label %40
    i32 4, label %43
    i32 5, label %46
    i32 6, label %49
    i32 7, label %54
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %20 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to <2 x i64>*
  %21 = load <2 x i64>, <2 x i64>* %20, align 8
  store %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"* null, %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"** %19, align 8
  %22 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3 to <2 x i64>*
  store <2 x i64> %21, <2 x i64>* %22, align 16
  %23 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3, i64 0, i32 0, i32 0, i32 1
  %24 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 0, i32 0, i32 1
  %25 = bitcast %"class.std::__1::shared_ptr.189"* %24 to <2 x i64>*
  %26 = load <2 x i64>, <2 x i64>* %25, align 8
  %27 = bitcast %"class.std::__1::shared_ptr.189"* %23 to <2 x i64>*
  store <2 x i64> %26, <2 x i64>* %27, align 16
  %28 = bitcast %"class.std::__1::shared_ptr.189"* %24 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 16, i1 false) #15
  br label %64

29:                                               ; preds = %15
  %30 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %31 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to <2 x i64>*
  %32 = load <2 x i64>, <2 x i64>* %31, align 8
  store %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"* null, %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"** %30, align 8
  %33 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3 to <2 x i64>*
  store <2 x i64> %32, <2 x i64>* %33, align 16
  %34 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3, i64 0, i32 0, i32 0, i32 1
  %35 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 0, i32 0, i32 1
  %36 = bitcast %"class.std::__1::shared_ptr.189"* %35 to <2 x i64>*
  %37 = load <2 x i64>, <2 x i64>* %36, align 8
  %38 = bitcast %"class.std::__1::shared_ptr.189"* %34 to <2 x i64>*
  store <2 x i64> %37, <2 x i64>* %38, align 16
  %39 = bitcast %"class.std::__1::shared_ptr.189"* %35 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 16, i1 false) #15
  br label %64

40:                                               ; preds = %15
  %41 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3 to i8*
  %42 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %41, i8* align 8 %42, i64 24, i1 false) #15
  br label %64

43:                                               ; preds = %15
  %44 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3 to i8*
  %45 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %44, i8* align 4 %45, i64 16, i1 false) #15
  br label %64

46:                                               ; preds = %15
  %47 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3 to i8*
  %48 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %47, i8* align 8 %48, i64 24, i1 false) #15
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 24, i1 false) #15
  br label %64

49:                                               ; preds = %15
  %50 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to %"class.perfetto::trace_processor::FuchsiaRecord"**
  %51 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i64*
  %52 = load i64, i64* %51, align 8
  store %"class.perfetto::trace_processor::FuchsiaRecord"* null, %"class.perfetto::trace_processor::FuchsiaRecord"** %50, align 8
  %53 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3 to i64*
  store i64 %52, i64* %53, align 16
  br label %64

54:                                               ; preds = %15
  %55 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to %"struct.perfetto::trace_processor::TrackEventData"**
  %56 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i64*
  %57 = load i64, i64* %56, align 8
  store %"struct.perfetto::trace_processor::TrackEventData"* null, %"struct.perfetto::trace_processor::TrackEventData"** %55, align 8
  %58 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3 to i64*
  store i64 %57, i64* %58, align 16
  br label %64

59:                                               ; preds = %15
  %60 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to %"struct.perfetto::trace_processor::SystraceLine"**
  %61 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i64*
  %62 = load i64, i64* %61, align 8
  store %"struct.perfetto::trace_processor::SystraceLine"* null, %"struct.perfetto::trace_processor::SystraceLine"** %60, align 8
  %63 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3 to i64*
  store i64 %62, i64* %63, align 16
  br label %64

64:                                               ; preds = %15, %18, %29, %40, %43, %46, %49, %54, %59
  %65 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3, i64 0, i32 1
  store i64 %6, i64* %65, align 16
  %66 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3, i64 0, i32 2
  store i64 %67, i64* %68, align 8
  %69 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %3, i64 0, i32 3
  store i32 %17, i32* %69, align 16
  store i32 0, i32* %16, align 8
  call void @_ZN8perfetto15trace_processor11TraceSorter14MaybePushEventEmNS0_21TimestampedTracePieceE(%"class.perfetto::trace_processor::TraceSorter"* %0, i64 0, %"struct.perfetto::trace_processor::TimestampedTracePiece"* nonnull %3) #15
  call void @_ZN8perfetto15trace_processor21TimestampedTracePieceD2Ev(%"struct.perfetto::trace_processor::TimestampedTracePiece"* nonnull %3) #15
  br label %274

70:                                               ; preds = %2
  %71 = getelementptr inbounds %"class.perfetto::trace_processor::TraceSorter", %"class.perfetto::trace_processor::TraceSorter"* %0, i64 0, i32 1
  %72 = getelementptr inbounds %"class.perfetto::trace_processor::TraceSorter", %"class.perfetto::trace_processor::TraceSorter"* %0, i64 0, i32 1, i32 0, i32 1
  %73 = bitcast %"struct.perfetto::trace_processor::TraceSorter::Queue"** %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = bitcast %"class.std::__1::vector.180"* %71 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %74, %76
  %78 = inttoptr i64 %76 to %"struct.perfetto::trace_processor::TraceSorter::Queue"*
  br i1 %77, label %79, label %82, !prof !39

79:                                               ; preds = %70
  tail call void @_ZNSt3__16vectorIN8perfetto15trace_processor11TraceSorter5QueueENS_9allocatorIS4_EEE8__appendEm(%"class.std::__1::vector.180"* %71, i64 1) #15
  %80 = getelementptr inbounds %"class.std::__1::vector.180", %"class.std::__1::vector.180"* %71, i64 0, i32 0, i32 0
  %81 = load %"struct.perfetto::trace_processor::TraceSorter::Queue"*, %"struct.perfetto::trace_processor::TraceSorter::Queue"** %80, align 8
  br label %82

82:                                               ; preds = %70, %79
  %83 = phi %"struct.perfetto::trace_processor::TraceSorter::Queue"* [ %78, %70 ], [ %81, %79 ]
  %84 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 3
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %132 [
    i32 8, label %127
    i32 1, label %86
    i32 2, label %97
    i32 3, label %108
    i32 4, label %111
    i32 5, label %114
    i32 6, label %117
    i32 7, label %122
  ]

86:                                               ; preds = %82
  %87 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %88 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to <2 x i64>*
  %89 = load <2 x i64>, <2 x i64>* %88, align 8
  store %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"* null, %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"** %87, align 8
  %90 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to <2 x i64>*
  store <2 x i64> %89, <2 x i64>* %90, align 16
  %91 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 0, i32 0, i32 1
  %92 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 0, i32 0, i32 1
  %93 = bitcast %"class.std::__1::shared_ptr.189"* %92 to <2 x i64>*
  %94 = load <2 x i64>, <2 x i64>* %93, align 8
  %95 = bitcast %"class.std::__1::shared_ptr.189"* %91 to <2 x i64>*
  store <2 x i64> %94, <2 x i64>* %95, align 16
  %96 = bitcast %"class.std::__1::shared_ptr.189"* %92 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %96, i8 0, i64 16, i1 false) #15
  br label %132

97:                                               ; preds = %82
  %98 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %99 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to <2 x i64>*
  %100 = load <2 x i64>, <2 x i64>* %99, align 8
  store %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"* null, %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"** %98, align 8
  %101 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to <2 x i64>*
  store <2 x i64> %100, <2 x i64>* %101, align 16
  %102 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 0, i32 0, i32 1
  %103 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1, i64 0, i32 0, i32 0, i32 1
  %104 = bitcast %"class.std::__1::shared_ptr.189"* %103 to <2 x i64>*
  %105 = load <2 x i64>, <2 x i64>* %104, align 8
  %106 = bitcast %"class.std::__1::shared_ptr.189"* %102 to <2 x i64>*
  store <2 x i64> %105, <2 x i64>* %106, align 16
  %107 = bitcast %"class.std::__1::shared_ptr.189"* %103 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %107, i8 0, i64 16, i1 false) #15
  br label %132

108:                                              ; preds = %82
  %109 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i8*
  %110 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %109, i8* align 8 %110, i64 24, i1 false) #15
  br label %132

111:                                              ; preds = %82
  %112 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i8*
  %113 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %112, i8* align 4 %113, i64 16, i1 false) #15
  br label %132

114:                                              ; preds = %82
  %115 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i8*
  %116 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %115, i8* align 8 %116, i64 24, i1 false) #15
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %116, i8 0, i64 24, i1 false) #15
  br label %132

117:                                              ; preds = %82
  %118 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to %"class.perfetto::trace_processor::FuchsiaRecord"**
  %119 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i64*
  %120 = load i64, i64* %119, align 8
  store %"class.perfetto::trace_processor::FuchsiaRecord"* null, %"class.perfetto::trace_processor::FuchsiaRecord"** %118, align 8
  %121 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i64*
  store i64 %120, i64* %121, align 16
  br label %132

122:                                              ; preds = %82
  %123 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to %"struct.perfetto::trace_processor::TrackEventData"**
  %124 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i64*
  %125 = load i64, i64* %124, align 8
  store %"struct.perfetto::trace_processor::TrackEventData"* null, %"struct.perfetto::trace_processor::TrackEventData"** %123, align 8
  %126 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i64*
  store i64 %125, i64* %126, align 16
  br label %132

127:                                              ; preds = %82
  %128 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to %"struct.perfetto::trace_processor::SystraceLine"**
  %129 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %1 to i64*
  %130 = load i64, i64* %129, align 8
  store %"struct.perfetto::trace_processor::SystraceLine"* null, %"struct.perfetto::trace_processor::SystraceLine"** %128, align 8
  %131 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i64*
  store i64 %130, i64* %131, align 16
  br label %132

132:                                              ; preds = %82, %86, %97, %108, %111, %114, %117, %122, %127
  %133 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 1
  %134 = bitcast i64* %5 to <2 x i64>*
  %135 = load <2 x i64>, <2 x i64>* %134, align 8
  %136 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 2
  %137 = bitcast i64* %133 to <2 x i64>*
  store <2 x i64> %135, <2 x i64>* %137, align 16
  %138 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 3
  store i32 %85, i32* %138, align 16
  store i32 0, i32* %84, align 8
  %139 = getelementptr inbounds %"struct.perfetto::trace_processor::TraceSorter::Queue", %"struct.perfetto::trace_processor::TraceSorter::Queue"* %83, i64 0, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %"struct.perfetto::trace_processor::TraceSorter::Queue", %"struct.perfetto::trace_processor::TraceSorter::Queue"* %83, i64 0, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = sub i64 %140, %142
  %144 = getelementptr inbounds %"struct.perfetto::trace_processor::TraceSorter::Queue", %"struct.perfetto::trace_processor::TraceSorter::Queue"* %83, i64 0, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ult i64 %143, %145
  br i1 %146, label %151, label %147, !prof !40

147:                                              ; preds = %132
  %148 = getelementptr inbounds %"struct.perfetto::trace_processor::TraceSorter::Queue", %"struct.perfetto::trace_processor::TraceSorter::Queue"* %83, i64 0, i32 0
  tail call void @_ZN8perfetto4base13CircularQueueINS_15trace_processor21TimestampedTracePieceEE4GrowEm(%"class.perfetto::base::CircularQueue"* %148, i64 0) #15
  %149 = load i64, i64* %139, align 8
  %150 = load i64, i64* %144, align 8
  br label %151

151:                                              ; preds = %147, %132
  %152 = phi i64 [ %145, %132 ], [ %150, %147 ]
  %153 = phi i64 [ %140, %132 ], [ %149, %147 ]
  %154 = add i64 %153, 1
  store i64 %154, i64* %139, align 8
  %155 = add i64 %152, -1
  %156 = and i64 %155, %153
  %157 = getelementptr inbounds %"struct.perfetto::trace_processor::TraceSorter::Queue", %"struct.perfetto::trace_processor::TraceSorter::Queue"* %83, i64 0, i32 0, i32 0
  %158 = load %"struct.perfetto::trace_processor::TimestampedTracePiece"*, %"struct.perfetto::trace_processor::TimestampedTracePiece"** %157, align 8
  %159 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %158, i64 %156
  %160 = load i32, i32* %138, align 16
  switch i32 %160, label %229 [
    i32 8, label %224
    i32 1, label %161
    i32 2, label %183
    i32 3, label %205
    i32 4, label %208
    i32 5, label %211
    i32 6, label %214
    i32 7, label %219
  ]

161:                                              ; preds = %151
  %162 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %159, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"* null, %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"** %162, align 8
  %163 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %164 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i64*
  %165 = load i64, i64* %164, align 16
  %166 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %159 to i64*
  store i64 %165, i64* %166, align 8
  store %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"* null, %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"** %163, align 16
  %167 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %158, i64 %156, i32 0, i32 0, i32 0, i32 1
  %168 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 0, i32 0, i32 0, i32 1
  %169 = bitcast i32* %168 to i64*
  %170 = bitcast i32* %167 to i64*
  %171 = load i64, i64* %169, align 8
  store i64 %171, i64* %170, align 8
  %172 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %158, i64 %156, i32 0, i32 0, i32 1
  %173 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 0, i32 0, i32 1
  %174 = bitcast %"class.std::__1::shared_ptr.189"* %173 to i64*
  %175 = load i64, i64* %174, align 16
  %176 = bitcast %"class.std::__1::shared_ptr.189"* %172 to i64*
  store i64 %175, i64* %176, align 8
  %177 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %158, i64 %156, i32 0, i32 0, i32 1, i32 1
  %178 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 0, i32 0, i32 1, i32 1
  %179 = bitcast %"class.std::__1::__shared_weak_count"** %178 to i64*
  %180 = load i64, i64* %179, align 8
  %181 = bitcast %"class.std::__1::__shared_weak_count"** %177 to i64*
  store i64 %180, i64* %181, align 8
  %182 = bitcast %"class.std::__1::shared_ptr.189"* %173 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %182, i8 0, i64 16, i1 false) #15
  br label %229

183:                                              ; preds = %151
  %184 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %159, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"* null, %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"** %184, align 8
  %185 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %186 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i64*
  %187 = load i64, i64* %186, align 16
  %188 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %159 to i64*
  store i64 %187, i64* %188, align 8
  store %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"* null, %"struct.perfetto::trace_processor::TraceBlobView::SharedBuf::RefCountedBuf"** %185, align 16
  %189 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %158, i64 %156, i32 0, i32 0, i32 0, i32 1
  %190 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 0, i32 0, i32 0, i32 1
  %191 = bitcast i32* %190 to i64*
  %192 = bitcast i32* %189 to i64*
  %193 = load i64, i64* %191, align 8
  store i64 %193, i64* %192, align 8
  %194 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %158, i64 %156, i32 0, i32 0, i32 1
  %195 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 0, i32 0, i32 1
  %196 = bitcast %"class.std::__1::shared_ptr.189"* %195 to i64*
  %197 = load i64, i64* %196, align 16
  %198 = bitcast %"class.std::__1::shared_ptr.189"* %194 to i64*
  store i64 %197, i64* %198, align 8
  %199 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %158, i64 %156, i32 0, i32 0, i32 1, i32 1
  %200 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4, i64 0, i32 0, i32 0, i32 1, i32 1
  %201 = bitcast %"class.std::__1::__shared_weak_count"** %200 to i64*
  %202 = load i64, i64* %201, align 8
  %203 = bitcast %"class.std::__1::__shared_weak_count"** %199 to i64*
  store i64 %202, i64* %203, align 8
  %204 = bitcast %"class.std::__1::shared_ptr.189"* %195 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %204, i8 0, i64 16, i1 false) #15
  br label %229

205:                                              ; preds = %151
  %206 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %159 to i8*
  %207 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %206, i8* nonnull align 16 %207, i64 24, i1 false) #15
  br label %229

208:                                              ; preds = %151
  %209 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %159 to i8*
  %210 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %209, i8* nonnull align 16 %210, i64 16, i1 false) #15
  br label %229

211:                                              ; preds = %151
  %212 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %159 to i8*
  %213 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %212, i8* nonnull align 16 %213, i64 24, i1 false) #15
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %213, i8 0, i64 24, i1 false) #15
  br label %229

214:                                              ; preds = %151
  %215 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to %"class.perfetto::trace_processor::FuchsiaRecord"**
  %216 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i64*
  %217 = load i64, i64* %216, align 16
  store %"class.perfetto::trace_processor::FuchsiaRecord"* null, %"class.perfetto::trace_processor::FuchsiaRecord"** %215, align 16
  %218 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %159 to i64*
  store i64 %217, i64* %218, align 8
  br label %229

219:                                              ; preds = %151
  %220 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to %"struct.perfetto::trace_processor::TrackEventData"**
  %221 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i64*
  %222 = load i64, i64* %221, align 16
  store %"struct.perfetto::trace_processor::TrackEventData"* null, %"struct.perfetto::trace_processor::TrackEventData"** %220, align 16
  %223 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %159 to i64*
  store i64 %222, i64* %223, align 8
  br label %229

224:                                              ; preds = %151
  %225 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to %"struct.perfetto::trace_processor::SystraceLine"**
  %226 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %4 to i64*
  %227 = load i64, i64* %226, align 16
  store %"struct.perfetto::trace_processor::SystraceLine"* null, %"struct.perfetto::trace_processor::SystraceLine"** %225, align 16
  %228 = bitcast %"struct.perfetto::trace_processor::TimestampedTracePiece"* %159 to i64*
  store i64 %227, i64* %228, align 8
  br label %229

229:                                              ; preds = %151, %161, %183, %205, %208, %211, %214, %219, %224
  %230 = load i64, i64* %133, align 16
  %231 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %158, i64 %156, i32 1
  store i64 %230, i64* %231, align 8
  %232 = load i64, i64* %136, align 8
  %233 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %158, i64 %156, i32 2
  store i64 %232, i64* %233, align 8
  %234 = load i32, i32* %138, align 16
  %235 = getelementptr inbounds %"struct.perfetto::trace_processor::TimestampedTracePiece", %"struct.perfetto::trace_processor::TimestampedTracePiece"* %158, i64 %156, i32 3
  store i32 %234, i32* %235, align 8
  store i32 0, i32* %138, align 16
  %236 = getelementptr inbounds %"struct.perfetto::trace_processor::TraceSorter::Queue", %"struct.perfetto::trace_processor::TraceSorter::Queue"* %83, i64 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = extractelement <2 x i64> %135, i32 0
  %239 = icmp slt i64 %238, %237
  %240 = select i1 %239, i64 %238, i64 %237
  store i64 %240, i64* %236, align 8
  %241 = getelementptr inbounds %"struct.perfetto::trace_processor::TraceSorter::Queue", %"struct.perfetto::trace_processor::TraceSorter::Queue"* %83, i64 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp slt i64 %238, %242
  br i1 %243, label %245, label %244, !prof !39

244:                                              ; preds = %229
  store i64 %238, i64* %241, align 8
  br label %260

245:                                              ; preds = %229
  %246 = getelementptr inbounds %"struct.perfetto::trace_processor::TraceSorter::Queue", %"struct.perfetto::trace_processor::TraceSorter::Queue"* %83, i64 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load i64, i64* %139, align 8
  %251 = load i64, i64* %141, align 8
  %252 = xor i64 %251, -1
  %253 = add i64 %250, %252
  store i64 %253, i64* %246, align 8
  %254 = getelementptr inbounds %"struct.perfetto::trace_processor::TraceSorter::Queue", %"struct.perfetto::trace_processor::TraceSorter::Queue"* %83, i64 0, i32 4
  store i64 %238, i64* %254, align 8
  br label %260

255:                                              ; preds = %245
  %256 = getelementptr inbounds %"struct.perfetto::trace_processor::TraceSorter::Queue", %"struct.perfetto::trace_processor::TraceSorter::Queue"* %83, i64 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = icmp slt i64 %238, %257
  %259 = select i1 %258, i64 %238, i64 %257
  store i64 %259, i64* %256, align 8
  br label %260

260:                                              ; preds = %244, %249, %255
  call void @_ZN8perfetto15trace_processor21TimestampedTracePieceD2Ev(%"struct.perfetto::trace_processor::TimestampedTracePiece"* nonnull %4) #15
  %261 = load i64, i64* %7, align 8
  %262 = load i64, i64* %241, align 8
  %263 = icmp slt i64 %261, %262
  %264 = select i1 %263, i64 %262, i64 %261
  store i64 %264, i64* %7, align 8
  %265 = getelementptr inbounds %"class.perfetto::trace_processor::TraceSorter", %"class.perfetto::trace_processor::TraceSorter"* %0, i64 0, i32 4
  %266 = load i64, i64* %236, align 8
  %267 = load i64, i64* %265, align 8
  %268 = icmp slt i64 %266, %267
  %269 = select i1 %268, i64 %266, i64 %267
  store i64 %269, i64* %265, align 8
  %270 = sub nsw i64 %264, %269
  %271 = load i64, i64* %11, align 8
  %272 = icmp slt i64 %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %260
  call void @_ZN8perfetto15trace_processor11TraceSorter32SortAndExtractEventsBeyondWindowEl(%"class.perfetto::trace_processor::TraceSorter"* %0, i64 %271) #15
  br label %274

274:                                              ; preds = %273, %260, %64
  ret void
}
```

### C++ Source Code
```c++
inline void AppendNonFtraceAndMaybeExtractEvents(TimestampedTracePiece ttp) {
    // Fast path: if this event is before all other events in the sorter and
    // happened more than the window size in the past, just push the event to
    // the next stage. This saves all the sorting logic which would simply move
    // this event to the head of the queue and then extract it out.
    //
    // In practice, these events will be rejected as being "out-of-order" later
    // on in trace processor (i.e. in EventTracker or SliceTracker); we don't
    // drop here to allow them to track packet drop stats.
    //
    // See b/188392852 for an example of where this condition would be hit in
    // practice.
    bool is_before_all_events = ttp.timestamp < global_max_ts_;
    bool is_before_window = global_max_ts_ - ttp.timestamp >= window_size_ns_;
    if (PERFETTO_UNLIKELY(is_before_all_events && is_before_window)) {
      MaybePushEvent(0, std::move(ttp));
      return;
    }

    // Slow path: append the event to the non-ftrace queue and extract any
    // events if available.
    Queue* queue = GetQueue(0);
    queue->Append(std::move(ttp));
    MaybeExtractEvents(queue);
}
```

```c++
inline Queue* GetQueue(size_t index) {
    if (PERFETTO_UNLIKELY(index >= queues_.size()))
      queues_.resize(index + 1);
    return &queues_[index];
}
```

### Reason
Chromium bug4 ~ bug9 all report the same bug on the same piece of source code. After tracing through its execution, we suspect that this may be caused by queue obtained from GetQueue() function to be uninitialized. However, since we are not able to be 100% sure on this, we'll categorize bug4 ~ bug9 as "Hard to Trace" for now.



