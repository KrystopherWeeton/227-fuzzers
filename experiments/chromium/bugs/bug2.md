## Chromium Bug 1
### Sys Description
```
Stack uninit bug
Name "_ZN6google8protobuf4util12_GLOBAL__N_119StatusErrorListener12InvalidValueERKNS1_9converter24LocationTrackerInterfaceENS0_11StringPieceES8__72"
in
Name "_ZN6google8protobuf4util12_GLOBAL__N_119StatusErrorListener12InvalidValueERKNS1_9converter24LocationTrackerInterfaceENS0_11StringPieceES8_"
[UnName 6,UnName 43,UnName 47,UnName 58,UnName 66,UnName 74]
"/home/jeffersonchien/all_ll_files/json_util.ll-O2_p"
on line
1
```
### LLVM Bitcode
```
; Function Attrs: nounwind ssp uwtable
define internal void @_ZN6google8protobuf4util12_GLOBAL__N_119StatusErrorListener12InvalidValueERKNS1_9converter24LocationTrackerInterfaceENS0_11StringPieceES8_(%"class.google::protobuf::util::(anonymous namespace)::StatusErrorListener"*, %"class.google::protobuf::util::converter::LocationTrackerInterface"* dereferenceable(8), i8*, i64, i8*, i64) unnamed_addr #0 align 2 {
  %7 = alloca %"class.google::protobuf::util::Status", align 8
  %8 = alloca %"class.std::__1::basic_string", align 8
  %9 = alloca %"struct.google::protobuf::strings::AlphaNum", align 8
  %10 = alloca %"class.std::__1::basic_string", align 8
  %11 = alloca %"struct.google::protobuf::strings::AlphaNum", align 8
  %12 = alloca %"struct.google::protobuf::strings::AlphaNum", align 8
  %13 = alloca %"class.std::__1::basic_string", align 8
  %14 = alloca %"struct.google::protobuf::strings::AlphaNum", align 8
  %15 = alloca %"struct.google::protobuf::strings::AlphaNum", align 8
  %16 = alloca %"class.std::__1::basic_string", align 8
  %17 = bitcast %"class.google::protobuf::util::Status"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #8
  %18 = bitcast %"class.std::__1::basic_string"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18) #8
  %19 = bitcast %"struct.google::protobuf::strings::AlphaNum"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %19) #8
  %20 = bitcast %"class.std::__1::basic_string"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %20) #8
  call fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_119StatusErrorListener12GetLocStringERKNS1_9converter24LocationTrackerInterfaceE(%"class.std::__1::basic_string"* nonnull sret %10, %"class.google::protobuf::util::converter::LocationTrackerInterface"* dereferenceable(8) %1)
  %21 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %9, i64 0, i32 0
  %22 = bitcast %"class.std::__1::basic_string"* %10 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %23 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %22, i64 0, i32 1, i32 0
  %24 = load i8, i8* %23, align 1
  %25 = icmp slt i8 %24, 0
  %26 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = select i1 %25, i8* %27, i8* %20
  store i8* %28, i8** %21, align 8
  %29 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %9, i64 0, i32 1
  %30 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = zext i8 %24 to i64
  %33 = select i1 %25, i64 %31, i64 %32
  store i64 %33, i64* %29, align 8
  %34 = bitcast %"struct.google::protobuf::strings::AlphaNum"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %34) #8
  %35 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %11, i64 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8** %35, align 8
  %36 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %11, i64 0, i32 1
  store i64 16, i64* %36, align 8
  %37 = bitcast %"struct.google::protobuf::strings::AlphaNum"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %37) #8
  %38 = bitcast %"class.std::__1::basic_string"* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %38) #8
  %39 = icmp eq i8* %4, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = bitcast %"class.std::__1::basic_string"* %13 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %42 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %41, i64 0, i32 1, i32 0
  store i8 0, i8* %42, align 1, !alias.scope !27
  store i8 0, i8* %38, align 8, !alias.scope !27
  br label %74

43:                                               ; preds = %6
  %44 = icmp ugt i64 %5, -17
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = bitcast %"class.std::__1::basic_string"* %13 to %"class.std::__1::__basic_string_common"*
  call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* nonnull %46) #10
  unreachable

47:                                               ; preds = %43
  %48 = icmp ult i64 %5, 23
  br i1 %48, label %58, label %49

49:                                               ; preds = %47
  %50 = add nuw i64 %5, 16
  %51 = and i64 %50, -16
  %52 = call i8* @_Znwm(i64 %51) #9
  %53 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i8* %52, i8** %53, align 8, !alias.scope !27
  %54 = or i64 %51, -9223372036854775808
  %55 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i64 %54, i64* %55, align 8, !alias.scope !27
  %56 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %5, i64* %56, align 8, !alias.scope !27
  %57 = bitcast %"class.std::__1::basic_string"* %13 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  br label %63

58:                                               ; preds = %47
  %59 = trunc i64 %5 to i8
  %60 = bitcast %"class.std::__1::basic_string"* %13 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %61 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %60, i64 0, i32 1, i32 0
  store i8 %59, i8* %61, align 1, !alias.scope !27
  %62 = icmp eq i64 %5, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %49
  %64 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %60, %58 ], [ %57, %49 ]
  %65 = phi i8* [ %38, %58 ], [ %52, %49 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %65, i8* nonnull align 1 %4, i64 %5, i1 false) #8
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %64, %63 ], [ %60, %58 ]
  %68 = phi i8* [ %65, %63 ], [ %38, %58 ]
  %69 = getelementptr inbounds i8, i8* %68, i64 %5
  store i8 0, i8* %69, align 1
  %70 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %67, i64 0, i32 1, i32 0
  %71 = load i8, i8* %70, align 1
  %72 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  br label %74

74:                                               ; preds = %40, %66
  %75 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %41, %40 ], [ %67, %66 ]
  %76 = phi i64 [ undef, %40 ], [ %73, %66 ]
  %77 = phi i8 [ 0, %40 ], [ %71, %66 ]
  %78 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %12, i64 0, i32 0
  %79 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %75, i64 0, i32 1, i32 0
  %80 = icmp slt i8 %77, 0
  %81 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = select i1 %80, i8* %82, i8* %38
  store i8* %83, i8** %78, align 8
  %84 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %12, i64 0, i32 1
  %85 = zext i8 %77 to i64
  %86 = select i1 %80, i64 %76, i64 %85
  store i64 %86, i64* %84, align 8
  %87 = bitcast %"struct.google::protobuf::strings::AlphaNum"* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %87) #8
  %88 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %14, i64 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %88, align 8
  %89 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %14, i64 0, i32 1
  store i64 10, i64* %89, align 8
  %90 = bitcast %"struct.google::protobuf::strings::AlphaNum"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %90) #8
  %91 = bitcast %"class.std::__1::basic_string"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %91) #8
  %92 = icmp eq i8* %2, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %74
  %94 = bitcast %"class.std::__1::basic_string"* %16 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %95 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %94, i64 0, i32 1, i32 0
  store i8 0, i8* %95, align 1, !alias.scope !32
  store i8 0, i8* %91, align 8, !alias.scope !32
  br label %127

96:                                               ; preds = %74
  %97 = icmp ugt i64 %3, -17
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  %99 = bitcast %"class.std::__1::basic_string"* %16 to %"class.std::__1::__basic_string_common"*
  call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* nonnull %99) #10
  unreachable

100:                                              ; preds = %96
  %101 = icmp ult i64 %3, 23
  br i1 %101, label %111, label %102

102:                                              ; preds = %100
  %103 = add nuw i64 %3, 16
  %104 = and i64 %103, -16
  %105 = call i8* @_Znwm(i64 %104) #9
  %106 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i8* %105, i8** %106, align 8, !alias.scope !32
  %107 = or i64 %104, -9223372036854775808
  %108 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i64 %107, i64* %108, align 8, !alias.scope !32
  %109 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %3, i64* %109, align 8, !alias.scope !32
  %110 = bitcast %"class.std::__1::basic_string"* %16 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  br label %116

111:                                              ; preds = %100
  %112 = trunc i64 %3 to i8
  %113 = bitcast %"class.std::__1::basic_string"* %16 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %114 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %113, i64 0, i32 1, i32 0
  store i8 %112, i8* %114, align 1, !alias.scope !32
  %115 = icmp eq i64 %3, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111, %102
  %117 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %113, %111 ], [ %110, %102 ]
  %118 = phi i8* [ %91, %111 ], [ %105, %102 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %118, i8* nonnull align 1 %2, i64 %3, i1 false) #8
  br label %119

119:                                              ; preds = %116, %111
  %120 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %117, %116 ], [ %113, %111 ]
  %121 = phi i8* [ %118, %116 ], [ %91, %111 ]
  %122 = getelementptr inbounds i8, i8* %121, i64 %3
  store i8 0, i8* %122, align 1
  %123 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %120, i64 0, i32 1, i32 0
  %124 = load i8, i8* %123, align 1
  %125 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  br label %127

127:                                              ; preds = %93, %119
  %128 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %94, %93 ], [ %120, %119 ]
  %129 = phi i64 [ undef, %93 ], [ %126, %119 ]
  %130 = phi i8 [ 0, %93 ], [ %124, %119 ]
  %131 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %15, i64 0, i32 0
  %132 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %128, i64 0, i32 1, i32 0
  %133 = icmp slt i8 %130, 0
  %134 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = select i1 %133, i8* %135, i8* %91
  store i8* %136, i8** %131, align 8
  %137 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %15, i64 0, i32 1
  %138 = zext i8 %130 to i64
  %139 = select i1 %133, i64 %129, i64 %138
  store i64 %139, i64* %137, align 8
  call void @_ZN6google8protobuf6StrCatERKNS0_7strings8AlphaNumES4_S4_S4_S4_(%"class.std::__1::basic_string"* nonnull sret %8, %"struct.google::protobuf::strings::AlphaNum"* nonnull dereferenceable(48) %9, %"struct.google::protobuf::strings::AlphaNum"* nonnull dereferenceable(48) %11, %"struct.google::protobuf::strings::AlphaNum"* nonnull dereferenceable(48) %12, %"struct.google::protobuf::strings::AlphaNum"* nonnull dereferenceable(48) %14, %"struct.google::protobuf::strings::AlphaNum"* nonnull dereferenceable(48) %15) #8
  %140 = bitcast %"class.std::__1::basic_string"* %8 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %141 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %140, i64 0, i32 1, i32 0
  %142 = load i8, i8* %141, align 1
  %143 = icmp slt i8 %142, 0
  %144 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = select i1 %143, i8* %145, i8* %18
  %147 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = zext i8 %142 to i64
  %150 = select i1 %143, i64 %148, i64 %149
  call void @_ZN6google8protobuf4util6StatusC1ENS1_5error4CodeENS0_11StringPieceE(%"class.google::protobuf::util::Status"* nonnull %7, i32 3, i8* %146, i64 %150) #8
  %151 = getelementptr inbounds %"class.google::protobuf::util::(anonymous namespace)::StatusErrorListener", %"class.google::protobuf::util::(anonymous namespace)::StatusErrorListener"* %0, i64 0, i32 1
  %152 = call dereferenceable(32) %"class.google::protobuf::util::Status"* @_ZN6google8protobuf4util6StatusaSERKS2_(%"class.google::protobuf::util::Status"* %151, %"class.google::protobuf::util::Status"* nonnull dereferenceable(32) %7) #8
  %153 = getelementptr inbounds %"class.google::protobuf::util::Status", %"class.google::protobuf::util::Status"* %7, i64 0, i32 1
  %154 = bitcast %"class.std::__1::basic_string"* %153 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %155 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %154, i64 0, i32 1, i32 0
  %156 = load i8, i8* %155, align 1
  %157 = icmp slt i8 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %127
  %159 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %153, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  call void @_ZdlPv(i8* %160) #9
  br label %161

161:                                              ; preds = %127, %158
  %162 = load i8, i8* %141, align 1
  %163 = icmp slt i8 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i8*, i8** %144, align 8
  call void @_ZdlPv(i8* %165) #9
  br label %166

166:                                              ; preds = %161, %164
  %167 = load i8, i8* %132, align 1
  %168 = icmp slt i8 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i8*, i8** %134, align 8
  call void @_ZdlPv(i8* %170) #9
  br label %171

171:                                              ; preds = %166, %169
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %91) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %90) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %87) #8
  %172 = load i8, i8* %79, align 1
  %173 = icmp slt i8 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i8*, i8** %81, align 8
  call void @_ZdlPv(i8* %175) #9
  br label %176

176:                                              ; preds = %171, %174
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %38) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %37) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %34) #8
  %177 = load i8, i8* %23, align 1
  %178 = icmp slt i8 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i8*, i8** %26, align 8
  call void @_ZdlPv(i8* %180) #9
  br label %181

181:                                              ; preds = %176, %179
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %20) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %19) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18) #8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #8
  ret void
}
```

### C++ Source Code
```c++
void InvalidValue(const converter::LocationTrackerInterface &loc, StringPiece type_name, StringPiece value) override
{
    status_ = util::Status(util::error::INVALID_ARGUMENT, StrCat(GetLocString(loc), ": invalid value ", std::string(value), " for type ", std::string(type_name)));
}
```

### Reason
```
We found this bug hard to trace
```