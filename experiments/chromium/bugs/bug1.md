## Chromium Bug 1
### Sys Description
```
Stack uninit bug
Name "_ZNK16password_manager8FacetURI18IsValidWebFacetURIEv_58"
in
Name "_ZNK16password_manager8FacetURI18IsValidWebFacetURIEv"
[UnName 1,UnName 7,UnName 12,UnName 51,UnName 63]
"/home/jeffersonchien/all_ll_files/affiliation_utils.ll-O2_p"
on line
1
```

### LLVM Bitcode
```
; Function Attrs: nounwind ssp uwtable
define hidden zeroext i1 @_ZNK16password_manager8FacetURI18IsValidWebFacetURIEv(%"class.password_manager::FacetURI"* nocapture readonly) local_unnamed_addr #0 align 2 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = bitcast %"class.std::__1::basic_string"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #13
  %4 = getelementptr inbounds %"class.password_manager::FacetURI", %"class.password_manager::FacetURI"* %0, i64 0, i32 0
  %5 = load i8, i8* %4, align 8, !range !2, !noalias !3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %60, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.password_manager::FacetURI", %"class.password_manager::FacetURI"* %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.password_manager::FacetURI", %"class.password_manager::FacetURI"* %0, i64 0, i32 2, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !noalias !3
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = bitcast %"class.std::__1::basic_string"* %2 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %14 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %13, i64 0, i32 1, i32 0
  store i8 0, i8* %14, align 1, !alias.scope !6
  br label %51

15:                                               ; preds = %7
  %16 = bitcast %"class.std::__1::basic_string"* %8 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %17 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %16, i64 0, i32 1, i32 0
  %18 = load i8, i8* %17, align 1, !noalias !3
  %19 = icmp slt i8 %18, 0
  %20 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !noalias !3
  %22 = bitcast %"class.std::__1::basic_string"* %8 to i8*
  %23 = select i1 %19, i8* %21, i8* %22
  %24 = getelementptr inbounds %"class.password_manager::FacetURI", %"class.password_manager::FacetURI"* %0, i64 0, i32 2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4, !noalias !3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = sext i32 %10 to i64
  %29 = icmp ugt i32 %10, -17
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = bitcast %"class.std::__1::basic_string"* %2 to %"class.std::__1::__basic_string_common"*
  call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* nonnull %31) #14
  unreachable

32:                                               ; preds = %15
  %33 = icmp ult i32 %10, 23
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  %35 = add nuw nsw i64 %28, 16
  %36 = and i64 %35, -16
  %37 = tail call i8* @_Znwm(i64 %36) #15
  %38 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i8* %37, i8** %38, align 8, !alias.scope !6
  %39 = or i64 %36, -9223372036854775808
  %40 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i64 %39, i64* %40, align 8, !alias.scope !6
  %41 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %28, i64* %41, align 8, !alias.scope !6
  %42 = bitcast %"class.std::__1::basic_string"* %2 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  br label %48

43:                                               ; preds = %32
  %44 = trunc i32 %10 to i8
  %45 = bitcast %"class.std::__1::basic_string"* %2 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %46 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %45, i64 0, i32 1, i32 0
  store i8 %44, i8* %46, align 1, !alias.scope !6
  %47 = icmp eq i32 %10, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %34
  %49 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %45, %43 ], [ %42, %34 ]
  %50 = phi i8* [ %3, %43 ], [ %37, %34 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %50, i8* align 1 %27, i64 %28, i1 false) #13
  br label %51

51:                                               ; preds = %48, %43, %12
  %52 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %49, %48 ], [ %45, %43 ], [ %13, %12 ]
  %53 = phi i64 [ %28, %48 ], [ 0, %43 ], [ 0, %12 ]
  %54 = phi i8* [ %50, %48 ], [ %3, %43 ], [ %3, %12 ]
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8 0, i8* %55, align 1
  %56 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %52, i64 0, i32 1, i32 0
  %57 = load i8, i8* %56, align 1
  %58 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  br label %63

60:                                               ; preds = %1
  %61 = bitcast %"class.std::__1::basic_string"* %2 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %62 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %61, i64 0, i32 1, i32 0
  store i8 0, i8* %62, align 1, !alias.scope !3
  store i8 0, i8* %3, align 8, !alias.scope !3
  br label %63

63:                                               ; preds = %51, %60
  %64 = phi %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* [ %52, %51 ], [ %61, %60 ]
  %65 = phi i64 [ %59, %51 ], [ undef, %60 ]
  %66 = phi i8 [ %57, %51 ], [ 0, %60 ]
  %67 = tail call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_ZN3url12kHttpsSchemeE, i64 0, i64 0)) #13
  %68 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %64, i64 0, i32 1, i32 0
  %69 = icmp slt i8 %66, 0
  %70 = zext i8 %66 to i64
  %71 = select i1 %69, i64 %65, i64 %70
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = call i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(%"class.std::__1::basic_string"* nonnull %2, i64 0, i64 -1, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_ZN3url12kHttpsSchemeE, i64 0, i64 0), i64 %67) #13
  %75 = icmp eq i32 %74, 0
  br label %76

76:                                               ; preds = %63, %73
  %77 = phi i1 [ %75, %73 ], [ false, %63 ]
  %78 = load i8, i8* %68, align 1
  %79 = icmp slt i8 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  call void @_ZdlPv(i8* %82) #15
  br label %83

83:                                               ; preds = %76, %80
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #13
  ret i1 %77
}
```

### C++ Source Code
```c++
bool FacetURI::IsValidWebFacetURI() const {
  return scheme() == url::kHttpsScheme;
}
```

### Reason
We found this bug hard to trace.
