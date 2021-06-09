## Chromium Bug 3
### Sys Description
```
Stack uninit bug
Name "_ZN6google8protobuf4util12_GLOBAL__N_119StatusErrorListener12MissingFieldERKNS1_9converter24LocationTrackerInterfaceENS0_11StringPieceE_67"
in
Name "_ZN6google8protobuf4util12_GLOBAL__N_119StatusErrorListener12MissingFieldERKNS1_9converter24LocationTrackerInterfaceENS0_11StringPieceE"
[UnName 4,UnName 38,UnName 42,UnName 53,UnName 61,UnName 69]
"/home/jeffersonchien/all_ll_files/json_util.ll-O2_p"
on line
1
```
### LLVM Bitcode
```
; Function Attrs: nounwind ssp uwtable
define internal void @_ZN6google8protobuf4util12_GLOBAL__N_119StatusErrorListener12MissingFieldERKNS1_9converter24LocationTrackerInterfaceENS0_11StringPieceE(%"class.google::protobuf::util::(anonymous namespace)::StatusErrorListener"*, %"class.google::protobuf::util::converter::LocationTrackerInterface"* dereferenceable(8), i8*, i64) unnamed_addr #0 align 2 {
  %5 = alloca %"class.google::protobuf::util::Status", align 8
  %6 = alloca %"class.std::__1::basic_string", align 8
  %7 = alloca %"struct.google::protobuf::strings::AlphaNum", align 8
  %8 = alloca %"class.std::__1::basic_string", align 8
  %9 = alloca %"struct.google::protobuf::strings::AlphaNum", align 8
  %10 = alloca %"struct.google::protobuf::strings::AlphaNum", align 8
  %11 = alloca %"class.std::__1::basic_string", align 8
  %12 = bitcast %"class.google::protobuf::util::Status"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #8
  %13 = bitcast %"class.std::__1::basic_string"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #8
  %14 = bitcast %"struct.google::protobuf::strings::AlphaNum"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %14) #8
  %15 = bitcast %"class.std::__1::basic_string"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15) #8
  call fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_119StatusErrorListener12GetLocStringERKNS1_9converter24LocationTrackerInterfaceE(%"class.std::__1::basic_string"* nonnull sret %8, %"class.google::protobuf::util::converter::LocationTrackerInterface"* dereferenceable(8) %1)
  %16 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %7, i64 0, i32 0
  %17 = bitcast %"class.std::__1::basic_string"* %8 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %18 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %17, i64 0, i32 1, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp slt i8 %19, 0
  %21 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = select i1 %20, i8* %22, i8* %15
  store i8* %23, i8** %16, align 8
  %24 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %7, i64 0, i32 1
  %25 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = zext i8 %19 to i64
  %28 = select i1 %20, i64 %26, i64 %27
  store i64 %28, i64* %24, align 8
  %29 = bitcast %"struct.google::protobuf::strings::AlphaNum"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %29) #8
  %30 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %9, i64 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %9, i64 0, i32 1
  store i64 16, i64* %31, align 8
  %32 = bitcast %"struct.google::protobuf::strings::AlphaNum"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %32) #8
  %33 = bitcast %"class.std::__1::basic_string"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %33) #8
  %34 = icmp eq i8* %2, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = bitcast %"class.std::__1::basic_string"* %11 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %37 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %36, i64 0, i32 1, i32 0
  store i8 0, i8* %37, align 1, !alias.scope !37
  store i8 0, i8* %33, align 8, !alias.scope !37
  br label %69

38:                                               ; preds = %4
  %39 = icmp ugt i64 %3, -17
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = bitcast %"class.std::__1::basic_string"* %11 to %"class.std::__1::__basic_string_common"*
  call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* nonnull %41) #10
  unreachable

42:                                               ; preds = %38
  %43 = icmp ult i64 %3, 23
  br i1 %43, label %53, label %44

44:                                               ; preds = %42
  %45 = add nuw i64 %3, 16
  %46 = and i64 %45, -16
  %47 = call i8* @_Znwm(i64 %46) #9
  %48 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i8* %47, i8** %48, align 8, !alias.scope !37
  %49 = or i64 %46, -9223372036854775808
  %50 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i64 %49, i64* %50, align 8, !alias.scope !37
  %51 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %3, i64* %51, align 8, !alias.scope !37
  %52 = bitcast %"class.std::__1::basic_string"* %11 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  br label %58

53:                                               ; preds = %42
  %54 = trunc i64 %3 to i8
  %55 = bitcast %"class.std::__1::basic_string"* %11 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %56 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %55, i64 0, i32 1, i32 0
  store i8 %54, i8* %56, align 1, !alias.scope !37
  %57 = icmp eq i64 %3, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53, %44
  %59 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %55, %53 ], [ %52, %44 ]
  %60 = phi i8* [ %33, %53 ], [ %47, %44 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %60, i8* nonnull align 1 %2, i64 %3, i1 false) #8
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %59, %58 ], [ %55, %53 ]
  %63 = phi i8* [ %60, %58 ], [ %33, %53 ]
  %64 = getelementptr inbounds i8, i8* %63, i64 %3
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %62, i64 0, i32 1, i32 0
  %66 = load i8, i8* %65, align 1
  %67 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  br label %69

69:                                               ; preds = %35, %61
  %70 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %36, %35 ], [ %62, %61 ]
  %71 = phi i64 [ undef, %35 ], [ %68, %61 ]
  %72 = phi i8 [ 0, %35 ], [ %66, %61 ]
  %73 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %10, i64 0, i32 0
  %74 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %70, i64 0, i32 1, i32 0
  %75 = icmp slt i8 %72, 0
  %76 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = select i1 %75, i8* %77, i8* %33
  store i8* %78, i8** %73, align 8
  %79 = getelementptr inbounds %"struct.google::protobuf::strings::AlphaNum", %"struct.google::protobuf::strings::AlphaNum"* %10, i64 0, i32 1
  %80 = zext i8 %72 to i64
  %81 = select i1 %75, i64 %71, i64 %80
  store i64 %81, i64* %79, align 8
  call void @_ZN6google8protobuf6StrCatERKNS0_7strings8AlphaNumES4_S4_(%"class.std::__1::basic_string"* nonnull sret %6, %"struct.google::protobuf::strings::AlphaNum"* nonnull dereferenceable(48) %7, %"struct.google::protobuf::strings::AlphaNum"* nonnull dereferenceable(48) %9, %"struct.google::protobuf::strings::AlphaNum"* nonnull dereferenceable(48) %10) #8
  %82 = bitcast %"class.std::__1::basic_string"* %6 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %83 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %82, i64 0, i32 1, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = icmp slt i8 %84, 0
  %86 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = select i1 %85, i8* %87, i8* %13
  %89 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = zext i8 %84 to i64
  %92 = select i1 %85, i64 %90, i64 %91
  call void @_ZN6google8protobuf4util6StatusC1ENS1_5error4CodeENS0_11StringPieceE(%"class.google::protobuf::util::Status"* nonnull %5, i32 3, i8* %88, i64 %92) #8
  %93 = getelementptr inbounds %"class.google::protobuf::util::(anonymous namespace)::StatusErrorListener", %"class.google::protobuf::util::(anonymous namespace)::StatusErrorListener"* %0, i64 0, i32 1
  %94 = call dereferenceable(32) %"class.google::protobuf::util::Status"* @_ZN6google8protobuf4util6StatusaSERKS2_(%"class.google::protobuf::util::Status"* %93, %"class.google::protobuf::util::Status"* nonnull dereferenceable(32) %5) #8
  %95 = getelementptr inbounds %"class.google::protobuf::util::Status", %"class.google::protobuf::util::Status"* %5, i64 0, i32 1
  %96 = bitcast %"class.std::__1::basic_string"* %95 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %96, i64 0, i32 1, i32 0
  %98 = load i8, i8* %97, align 1
  %99 = icmp slt i8 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %69
  %101 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %95, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  call void @_ZdlPv(i8* %102) #9
  br label %103

103:                                              ; preds = %69, %100
  %104 = load i8, i8* %83, align 1
  %105 = icmp slt i8 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i8*, i8** %86, align 8
  call void @_ZdlPv(i8* %107) #9
  br label %108

108:                                              ; preds = %103, %106
  %109 = load i8, i8* %74, align 1
  %110 = icmp slt i8 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i8*, i8** %76, align 8
  call void @_ZdlPv(i8* %112) #9
  br label %113

113:                                              ; preds = %108, %111
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %33) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %32) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %29) #8
  %114 = load i8, i8* %18, align 1
  %115 = icmp slt i8 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i8*, i8** %21, align 8
  call void @_ZdlPv(i8* %117) #9
  br label %118

118:                                              ; preds = %113, %116
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %14) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #8
  ret void
}
```
### C++ Source Code
```c++
void MissingField(const converter::LocationTrackerInterface &loc, StringPiece missing_name) override
{
    status_ = util::Status(util::error::INVALID_ARGUMENT, StrCat(GetLocString(loc), ": missing field ", std::string(missing_name)));
}
```

### Reason

We found this bug hard to trace.
