; ModuleID = 'Jimbo jit'
source_filename = "Jimbo jit"

%_IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %_IO_marker*, %_IO_FILE*, i32, i32, i64, i16, i8, i8, %_IO_lock_t* }
%_IO_marker = type opaque
%_IO_lock_t = type opaque
%file = type { %_IO_FILE*, i1 }

@Sconst = private unnamed_addr constant [14 x i8] c"Warning: File\00", align 1
@Sconst.1 = private unnamed_addr constant [15 x i8] c"does not exist\00", align 1
@0 = private unnamed_addr constant [11 x i8] c"%s %s %s \0A\00", align 1
@Sconst.2 = private unnamed_addr constant [4 x i8] c"cp \00", align 1
@Sconst.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Sconst.4 = private unnamed_addr constant [12 x i8] c"./jimbundle\00", align 1
@Sconst.5 = private unnamed_addr constant [16 x i8] c"./jimbundle.txt\00", align 1
@Sconst.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Sconst.7 = private unnamed_addr constant [24 x i8] c"./jimbundle/filemap.txt\00", align 1
@Sconst.8 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@Sconst.9 = private unnamed_addr constant [20 x i8] c"./jimbundle/_%d.txt\00", align 1
@Sconst.10 = private unnamed_addr constant [8 x i8] c"_%d.txt\00", align 1
@Sconst.11 = private unnamed_addr constant [48 x i8] c"tar -czvf NEW_bundle.jimbundle -C ./jimbundle .\00", align 1
@Sconst.12 = private unnamed_addr constant [44 x i8] c"tar -xvzf ./backup.jimbundle -C ./jimbundle\00", align 1
@Sconst.13 = private unnamed_addr constant [24 x i8] c"./jimbundle/filemap.txt\00", align 1
@Sconst.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Sconst.15 = private unnamed_addr constant [19 x i8] c"mkdir -p `dirname \00", align 1
@Sconst.16 = private unnamed_addr constant [9 x i8] c"` && cp \00", align 1
@Sconst.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@1 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1
@Sconst.18 = private unnamed_addr constant [62 x i8] c"usage: Jimbundler rollback <USER>@<IP_ADDR> <REMOTE_LOCATION>\00", align 1
@2 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1
@Sconst.19 = private unnamed_addr constant [5 x i8] c"ssh \00", align 1
@Sconst.20 = private unnamed_addr constant [6 x i8] c" 'cd \00", align 1
@Sconst.21 = private unnamed_addr constant [20 x i8] c" ; ./jimbundler rb'\00", align 1
@3 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1
@Sconst.22 = private unnamed_addr constant [30 x i8] c"usage: jimbundler mark <FILE>\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1
@Sconst.23 = private unnamed_addr constant [4 x i8] c"mv \00", align 1
@Sconst.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Sconst.25 = private unnamed_addr constant [73 x i8] c"usage: jimbundler deploy <LOCAL_FILE> <REMOTE_FILE_DIR> <USER>@<IP_ADDR>\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1
@Sconst.26 = private unnamed_addr constant [5 x i8] c"scp \00", align 1
@Sconst.27 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Sconst.28 = private unnamed_addr constant [2 x i8] c":\00", align 1
@6 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1
@Sconst.29 = private unnamed_addr constant [5 x i8] c"ssh \00", align 1
@Sconst.30 = private unnamed_addr constant [6 x i8] c" 'cd \00", align 1
@Sconst.31 = private unnamed_addr constant [26 x i8] c" ; ./jimbundler unpack ./\00", align 1
@Sconst.32 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@Sconst.33 = private unnamed_addr constant [68 x i8] c"usage: jimbundler download <FILE> <USER>@<DEVICE>:<REMOTE_LOCATION>\00", align 1
@7 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1
@Sconst.34 = private unnamed_addr constant [8 x i8] c"scp -r \00", align 1
@Sconst.35 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@Sconst.36 = private unnamed_addr constant [11 x i8] c".jimbundle\00", align 1
@Sconst.37 = private unnamed_addr constant [64 x i8] c"usage: jimbundler send <FILE> <USER>@<DEVICE>:<REMOTE_LOCATION>\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1
@Sconst.38 = private unnamed_addr constant [5 x i8] c"scp \00", align 1
@Sconst.39 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Sconst.40 = private unnamed_addr constant [45 x i8] c"mv ./NEW_bundle.jimbundle ./backup.jimbundle\00", align 1
@Sconst.41 = private unnamed_addr constant [28 x i8] c"tar -xvzf %s -C ./jimbundle\00", align 1
@Sconst.42 = private unnamed_addr constant [24 x i8] c"./jimbundle/filemap.txt\00", align 1
@Sconst.43 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Sconst.44 = private unnamed_addr constant [19 x i8] c"mkdir -p `dirname \00", align 1
@Sconst.45 = private unnamed_addr constant [9 x i8] c"` && cp \00", align 1
@Sconst.46 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Sconst.47 = private unnamed_addr constant [21 x i8] c"rm -rf ./jimbundle/*\00", align 1
@Sconst.48 = private unnamed_addr constant [29 x i8] c"mv ./NEW_bundle.jimbundle ./\00", align 1
@Sconst.49 = private unnamed_addr constant [5 x i8] c"NEW_\00", align 1
@Sconst.50 = private unnamed_addr constant [11 x i8] c".jimbundle\00", align 1
@Sconst.51 = private unnamed_addr constant [16 x i8] c"./jimbundle.txt\00", align 1
@Sconst.52 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@Sconst.53 = private unnamed_addr constant [15 x i8] c"hash of arg 1:\00", align 1
@9 = private unnamed_addr constant [8 x i8] c"%s %d \0A\00", align 1
@Sconst.54 = private unnamed_addr constant [22 x i8] c"executed successfully\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1

declare i32 @system(i8* %cmd)

declare i32 @mkdir(i8* %dir, i32 %mode)

declare i8* @strcat(i8* %p1, i8* %p2)

declare i8* @strcpy(i8* %p1, i8* %p2)

declare i32 @sprintf(i8* %res, i8* %fmt, i8* %base)

declare i8* @calloc(i64 %len, i64 %sz)

declare i1 @feof(%_IO_FILE* %this)

declare i32 @fclose(%_IO_FILE* %this)

declare i32 @fgetc(%_IO_FILE* %this)

declare i32 @fputc(i8 %c, %_IO_FILE* %f)

declare %_IO_FILE* @fopen(i8* %file, i8* %mode)

declare i8* @realloc(i8* %s, i32 %sz)

define %file* @file_constructor(%file* %this, i8* %filedir, i8* %mode) {
entry:
  %filedir1 = alloca i8*, align 8
  store i8* %filedir, i8** %filedir1, align 8
  %mode2 = alloca i8*, align 8
  store i8* %mode, i8** %mode2, align 8
  %memberaccess = getelementptr inbounds %file, %file* %this, i32 0, i32 1
  %loadtmp = load i8*, i8** %mode2, align 8
  %offsetval = getelementptr i8, i8* %loadtmp, i32 0
  %loadtmp3 = load i8, i8* %offsetval, align 1
  %signExtendTmp = sext i8 %loadtmp3 to i32
  %cmptmp = icmp eq i32 %signExtendTmp, 99
  store i1 %cmptmp, i1* %memberaccess, align 1
  %memberaccess4 = getelementptr inbounds %file, %file* %this, i32 0, i32 0
  %loadtmp5 = load i8*, i8** %filedir1, align 8
  %loadtmp6 = load i8*, i8** %mode2, align 8
  %calltmp = call %_IO_FILE* @fopen(i8* %loadtmp5, i8* %loadtmp6)
  store %_IO_FILE* %calltmp, %_IO_FILE** %memberaccess4, align 8
  %memberaccess7 = getelementptr inbounds %file, %file* %this, i32 0, i32 0
  %LoadTmp = load %_IO_FILE*, %_IO_FILE** %memberaccess7, align 8
  %ptrcasttmp = ptrtoint %_IO_FILE* %LoadTmp to i64
  %cmptmp8 = icmp eq i64 %ptrcasttmp, 0
  br i1 %cmptmp8, label %ifstart, label %ifend

ifstart:                                          ; preds = %entry
  %loadtmp9 = load i8*, i8** %filedir1, align 8
  %printftemp = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @Sconst, i32 0, i32 0), i8* %loadtmp9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @Sconst.1, i32 0, i32 0))
  br label %glblifend

ifend:                                            ; preds = %entry
  br label %glblifend

glblifend:                                        ; preds = %ifend, %ifstart
  ret %file* %this
}

declare i32 @printf(i8* %0, ...)

define i1 @eof(%file* %this) {
entry:
  %memberaccess = getelementptr inbounds %file, %file* %this, i32 0, i32 0
  %LoadTmp = load %_IO_FILE*, %_IO_FILE** %memberaccess, align 8
  %calltmp = call i1 @feof(%_IO_FILE* %LoadTmp)
  ret i1 %calltmp
}

define i8 @readChar(%file* %this) {
entry:
  %memberaccess = getelementptr inbounds %file, %file* %this, i32 0, i32 0
  %LoadTmp = load %_IO_FILE*, %_IO_FILE** %memberaccess, align 8
  %calltmp = call i32 @fgetc(%_IO_FILE* %LoadTmp)
  %0 = trunc i32 %calltmp to i8
  ret i8 %0
}

define i8* @readLine(%file* %this) {
entry:
  %line = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %line, align 8
  %clearalloctmp = call i8* @calloc(i64 1, i64 1)
  store i8* %clearalloctmp, i8** %line, align 8
  %loadtmp = load i8*, i8** %line, align 8
  store i8 0, i8* %loadtmp, align 1
  %size = alloca i32, i64 1, align 4
  store i32 zeroinitializer, i32* %size, align 4
  store i32 1, i32* %size, align 4
  %c = alloca i8, i64 1, align 1
  store i8 zeroinitializer, i8* %c, align 1
  %calltmp = call i8 @readChar(%file* %this)
  store i8 %calltmp, i8* %c, align 1
  %calltmp1 = call i1 @eof(%file* %this)
  %cmptmp = icmp eq i1 %calltmp1, false
  br i1 %cmptmp, label %loopstart, label %loopend

loopstart:                                        ; preds = %glblifend, %entry
  %loadtmp2 = load i8, i8* %c, align 1
  %signExtendTmp = sext i8 %loadtmp2 to i32
  %cmptmp3 = icmp eq i32 %signExtendTmp, 10
  br i1 %cmptmp3, label %ifstart, label %ifend

loopend:                                          ; preds = %glblifend, %ifstart, %entry
  %loadtmp16 = load i8*, i8** %line, align 8
  ret i8* %loadtmp16

ifstart:                                          ; preds = %loopstart
  br label %loopend
  br label %glblifend

ifend:                                            ; preds = %loopstart
  br label %glblifend

glblifend:                                        ; preds = %ifend, %ifstart
  %loadtmp4 = load i8*, i8** %line, align 8
  %loadtmp5 = load i32, i32* %size, align 4
  %addtemp = add i32 %loadtmp5, 1
  %calltmp6 = call i8* @realloc(i8* %loadtmp4, i32 %addtemp)
  store i8* %calltmp6, i8** %line, align 8
  %loadtmp7 = load i8*, i8** %line, align 8
  %loadtmp8 = load i32, i32* %size, align 4
  %subtmp = sub i32 %loadtmp8, 1
  %offsetval = getelementptr i8, i8* %loadtmp7, i32 %subtmp
  %loadtmp9 = load i8, i8* %c, align 1
  store i8 %loadtmp9, i8* %offsetval, align 1
  %loadtmp10 = load i8*, i8** %line, align 8
  %loadtmp11 = load i32, i32* %size, align 4
  %offsetval12 = getelementptr i8, i8* %loadtmp10, i32 %loadtmp11
  store i8 0, i8* %offsetval12, align 1
  %incOrDecDerefTemp = load i32, i32* %size, align 4
  %incdectemp = add i32 %incOrDecDerefTemp, 1
  store i32 %incdectemp, i32* %size, align 4
  %calltmp13 = call i8 @readChar(%file* %this)
  store i8 %calltmp13, i8* %c, align 1
  %calltmp14 = call i1 @eof(%file* %this)
  %cmptmp15 = icmp eq i1 %calltmp14, false
  br i1 %cmptmp15, label %loopstart, label %loopend
}

define i1 @close(%file* %this) {
entry:
  %memberaccess = getelementptr inbounds %file, %file* %this, i32 0, i32 0
  %LoadTmp = load %_IO_FILE*, %_IO_FILE** %memberaccess, align 8
  %ptrcasttmp = ptrtoint %_IO_FILE* %LoadTmp to i64
  %cmptmp = icmp eq i64 %ptrcasttmp, 0
  br i1 %cmptmp, label %ifstart, label %ifend

ifstart:                                          ; preds = %entry
  ret i1 true
  br label %glblifend

ifend:                                            ; preds = %entry
  br label %glblifend

glblifend:                                        ; preds = %ifend, %ifstart
  %memberaccess1 = getelementptr inbounds %file, %file* %this, i32 0, i32 0
  %LoadTmp2 = load %_IO_FILE*, %_IO_FILE** %memberaccess1, align 8
  %calltmp = call i32 @fclose(%_IO_FILE* %LoadTmp2)
  %cmptmp3 = icmp ne i32 %calltmp, 0
  ret i1 %cmptmp3
}

define i1 @writeChar(%file* %this, i8 %c) {
entry:
  %c1 = alloca i8, align 1
  store i8 %c, i8* %c1, align 1
  %memberaccess = getelementptr inbounds %file, %file* %this, i32 0, i32 1
  %LoadTmp = load i1, i1* %memberaccess, align 1
  br i1 %LoadTmp, label %ifstart, label %ifend

ifstart:                                          ; preds = %entry
  ret i1 false
  br label %glblifend

ifend:                                            ; preds = %entry
  br label %glblifend

glblifend:                                        ; preds = %ifend, %ifstart
  %loadtmp = load i8, i8* %c1, align 1
  %memberaccess2 = getelementptr inbounds %file, %file* %this, i32 0, i32 0
  %LoadTmp3 = load %_IO_FILE*, %_IO_FILE** %memberaccess2, align 8
  %calltmp = call i32 @fputc(i8 %loadtmp, %_IO_FILE* %LoadTmp3)
  %loadtmp4 = load i8, i8* %c1, align 1
  %signExtendTmp = sext i8 %loadtmp4 to i32
  %cmptmp = icmp eq i32 %calltmp, %signExtendTmp
  ret i1 %cmptmp
}

define i1 @write(%file* %this, i8* %c) {
entry:
  %c1 = alloca i8*, align 8
  store i8* %c, i8** %c1, align 8
  %retval = alloca i1, i64 1, align 1
  store i1 zeroinitializer, i1* %retval, align 1
  store i1 true, i1* %retval, align 1
  %i = alloca i32, i64 1, align 4
  store i32 zeroinitializer, i32* %i, align 4
  store i32 0, i32* %i, align 4
  %loadtmp = load i8*, i8** %c1, align 8
  %loadtmp2 = load i32, i32* %i, align 4
  %offsetval = getelementptr i8, i8* %loadtmp, i32 %loadtmp2
  %loadtmp3 = load i8, i8* %offsetval, align 1
  %signExtendTmp = sext i8 %loadtmp3 to i32
  %cmptmp = icmp ne i32 %signExtendTmp, 0
  br i1 %cmptmp, label %loopstart, label %loopend

loopstart:                                        ; preds = %loopstart, %entry
  %loadtmp4 = load i1, i1* %retval, align 1
  %loadtmp5 = load i8*, i8** %c1, align 8
  %loadtmp6 = load i32, i32* %i, align 4
  %offsetval7 = getelementptr i8, i8* %loadtmp5, i32 %loadtmp6
  %loadtmp8 = load i8, i8* %offsetval7, align 1
  %calltmp = call i1 @writeChar(%file* %this, i8 %loadtmp8)
  %andtmp = select i1 %loadtmp4, i1 %calltmp, i1 false
  store i1 %andtmp, i1* %retval, align 1
  %incOrDecDerefTemp = load i32, i32* %i, align 4
  %incdectemp = add i32 %incOrDecDerefTemp, 1
  store i32 %incdectemp, i32* %i, align 4
  %loadtmp9 = load i8*, i8** %c1, align 8
  %loadtmp10 = load i32, i32* %i, align 4
  %offsetval11 = getelementptr i8, i8* %loadtmp9, i32 %loadtmp10
  %loadtmp12 = load i8, i8* %offsetval11, align 1
  %signExtendTmp13 = sext i8 %loadtmp12 to i32
  %cmptmp14 = icmp ne i32 %signExtendTmp13, 0
  br i1 %cmptmp14, label %loopstart, label %loopend

loopend:                                          ; preds = %loopstart, %entry
  %loadtmp15 = load i1, i1* %retval, align 1
  ret i1 %loadtmp15
}

define i1 @copyContents(i8* %origin, i8* %dest) {
entry:
  %origin1 = alloca i8*, align 8
  store i8* %origin, i8** %origin1, align 8
  %dest2 = alloca i8*, align 8
  store i8* %dest, i8** %dest2, align 8
  %cmd = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %cmd, align 8
  %calltmp = call i8* @calloc(i64 1, i64 700)
  store i8* %calltmp, i8** %cmd, align 8
  %loadtmp = load i8*, i8** %cmd, align 8
  %calltmp3 = call i8* @strcat(i8* %loadtmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Sconst.2, i32 0, i32 0))
  %loadtmp4 = load i8*, i8** %cmd, align 8
  %loadtmp5 = load i8*, i8** %origin1, align 8
  %calltmp6 = call i8* @strcat(i8* %loadtmp4, i8* %loadtmp5)
  %loadtmp7 = load i8*, i8** %cmd, align 8
  %calltmp8 = call i8* @strcat(i8* %loadtmp7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.3, i32 0, i32 0))
  %loadtmp9 = load i8*, i8** %cmd, align 8
  %loadtmp10 = load i8*, i8** %dest2, align 8
  %calltmp11 = call i8* @strcat(i8* %loadtmp9, i8* %loadtmp10)
  %loadtmp12 = load i8*, i8** %cmd, align 8
  %calltmp13 = call i32 @system(i8* %loadtmp12)
  %loadtmp14 = load i8*, i8** %cmd, align 8
  %freedValue = call i8* @free(i8* %loadtmp14)
  ret i1 true
}

declare i8* @free(i8* %0)

define i8* @replaceFirst(i8* %str, i8 %startchar, i8 %replacement) {
entry:
  %str1 = alloca i8*, align 8
  store i8* %str, i8** %str1, align 8
  %startchar2 = alloca i8, align 1
  store i8 %startchar, i8* %startchar2, align 1
  %replacement3 = alloca i8, align 1
  store i8 %replacement, i8* %replacement3, align 1
  %i = alloca i32, i64 1, align 4
  store i32 zeroinitializer, i32* %i, align 4
  store i32 0, i32* %i, align 4
  %loadtmp = load i8*, i8** %str1, align 8
  %loadtmp4 = load i32, i32* %i, align 4
  %offsetval = getelementptr i8, i8* %loadtmp, i32 %loadtmp4
  %loadtmp5 = load i8, i8* %offsetval, align 1
  %signExtendTmp = sext i8 %loadtmp5 to i32
  %cmptmp = icmp ne i32 %signExtendTmp, 0
  br i1 %cmptmp, label %loopstart, label %loopend

loopstart:                                        ; preds = %glblifend, %entry
  %loadtmp6 = load i8*, i8** %str1, align 8
  %loadtmp7 = load i32, i32* %i, align 4
  %offsetval8 = getelementptr i8, i8* %loadtmp6, i32 %loadtmp7
  %loadtmp9 = load i8, i8* %offsetval8, align 1
  %loadtmp10 = load i8, i8* %startchar2, align 1
  %cmptmp11 = icmp eq i8 %loadtmp9, %loadtmp10
  br i1 %cmptmp11, label %ifstart, label %ifend

loopend:                                          ; preds = %glblifend, %entry
  %loadtmp25 = load i8*, i8** %str1, align 8
  ret i8* %loadtmp25

ifstart:                                          ; preds = %loopstart
  %loadtmp12 = load i8*, i8** %str1, align 8
  %loadtmp13 = load i32, i32* %i, align 4
  %offsetval14 = getelementptr i8, i8* %loadtmp12, i32 %loadtmp13
  %loadtmp15 = load i8, i8* %replacement3, align 1
  store i8 %loadtmp15, i8* %offsetval14, align 1
  %loadtmp16 = load i8*, i8** %str1, align 8
  %loadtmp17 = load i32, i32* %i, align 4
  %addtemp = add i32 %loadtmp17, 1
  %offsetval18 = getelementptr i8, i8* %loadtmp16, i32 %addtemp
  ret i8* %offsetval18
  br label %glblifend

ifend:                                            ; preds = %loopstart
  br label %glblifend

glblifend:                                        ; preds = %ifend, %ifstart
  %incOrDecDerefTemp = load i32, i32* %i, align 4
  %incdectemp = add i32 %incOrDecDerefTemp, 1
  store i32 %incdectemp, i32* %i, align 4
  %loadtmp19 = load i8*, i8** %str1, align 8
  %loadtmp20 = load i32, i32* %i, align 4
  %offsetval21 = getelementptr i8, i8* %loadtmp19, i32 %loadtmp20
  %loadtmp22 = load i8, i8* %offsetval21, align 1
  %signExtendTmp23 = sext i8 %loadtmp22 to i32
  %cmptmp24 = icmp ne i32 %signExtendTmp23, 0
  br i1 %cmptmp24, label %loopstart, label %loopend
}

define i32 @pack() {
entry:
  %calltmp = call i32 @mkdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @Sconst.4, i32 0, i32 0), i32 777)
  %bundlemap = alloca %file, i64 1, align 8
  store %file zeroinitializer, %file* %bundlemap, align 8
  %calltmp1 = call %file* @file_constructor(%file* %bundlemap, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @Sconst.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.6, i32 0, i32 0))
  %f = alloca %file, i64 1, align 8
  store %file zeroinitializer, %file* %f, align 8
  %calltmp2 = call %file* @file_constructor(%file* %f, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @Sconst.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @Sconst.8, i32 0, i32 0))
  %ctr = alloca i32, i64 1, align 4
  store i32 zeroinitializer, i32* %ctr, align 4
  store i32 1, i32* %ctr, align 4
  %line = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %line, align 8
  %calltmp3 = call i8* @readLine(%file* %bundlemap)
  store i8* %calltmp3, i8** %line, align 8
  %calltmp4 = call i1 @eof(%file* %bundlemap)
  %cmptmp = icmp eq i1 %calltmp4, false
  br i1 %cmptmp, label %loopstart, label %loopend

loopstart:                                        ; preds = %loopstart, %entry
  %newfilename = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %newfilename, align 8
  %calltmp5 = call i8* @calloc(i64 1, i64 50)
  store i8* %calltmp5, i8** %newfilename, align 8
  %loadtmp = load i8*, i8** %newfilename, align 8
  %loadtmp6 = load i32, i32* %ctr, align 4
  %0 = inttoptr i32 %loadtmp6 to i8*
  %calltmp7 = call i32 @sprintf(i8* %loadtmp, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @Sconst.9, i32 0, i32 0), i8* %0)
  %loadtmp8 = load i8*, i8** %line, align 8
  %loadtmp9 = load i8*, i8** %newfilename, align 8
  %calltmp10 = call i1 @copyContents(i8* %loadtmp8, i8* %loadtmp9)
  %loadtmp11 = load i8*, i8** %newfilename, align 8
  %loadtmp12 = load i32, i32* %ctr, align 4
  %loadtmp13 = load i8*, i8** %newfilename, align 8
  %calltmp14 = call i1 @write(%file* %f, i8* %loadtmp13)
  %calltmp15 = call i1 @writeChar(%file* %f, i8 59)
  %loadtmp16 = load i8*, i8** %line, align 8
  %calltmp17 = call i1 @write(%file* %f, i8* %loadtmp16)
  %calltmp18 = call i1 @writeChar(%file* %f, i8 10)
  %incOrDecDerefTemp = load i32, i32* %ctr, align 4
  %incdectemp = add i32 %incOrDecDerefTemp, 1
  store i32 %incdectemp, i32* %ctr, align 4
  %loadtmp19 = load i8*, i8** %newfilename, align 8
  %freedValue = call i8* @free(i8* %loadtmp19)
  %loadtmp20 = load i8*, i8** %line, align 8
  %freedValue21 = call i8* @free(i8* %loadtmp20)
  %calltmp22 = call i8* @readLine(%file* %bundlemap)
  store i8* %calltmp22, i8** %line, align 8
  %calltmp23 = call i1 @eof(%file* %bundlemap)
  %cmptmp24 = icmp eq i1 %calltmp23, false
  br i1 %cmptmp24, label %loopstart, label %loopend

loopend:                                          ; preds = %loopstart, %entry
  %calltmp25 = call i1 @close(%file* %bundlemap)
  %calltmp26 = call i1 @close(%file* %f)
  %calltmp27 = call i32 @system(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @Sconst.11, i32 0, i32 0))
  ret i32 0
}

define i32 @hash(i8* %str) {
entry:
  %str1 = alloca i8*, align 8
  store i8* %str, i8** %str1, align 8
  %hash = alloca i64, i64 1, align 8
  store i64 zeroinitializer, i64* %hash, align 4
  store i64 5381, i64* %hash, align 4
  %i = alloca i64, i64 1, align 8
  store i64 zeroinitializer, i64* %i, align 4
  store i64 0, i64* %i, align 4
  %loadtmp = load i8*, i8** %str1, align 8
  %loadtmp2 = load i64, i64* %i, align 4
  %offsetval = getelementptr i8, i8* %loadtmp, i64 %loadtmp2
  %loadtmp3 = load i8, i8* %offsetval, align 1
  %signExtendTmp = sext i8 %loadtmp3 to i32
  %cmptmp = icmp ne i32 %signExtendTmp, 0
  br i1 %cmptmp, label %loopstart, label %loopend

loopstart:                                        ; preds = %loopstart, %entry
  %loadtmp4 = load i64, i64* %hash, align 4
  %multemp = mul i64 33, %loadtmp4
  %loadtmp5 = load i8*, i8** %str1, align 8
  %loadtmp6 = load i64, i64* %i, align 4
  %offsetval7 = getelementptr i8, i8* %loadtmp5, i64 %loadtmp6
  %loadtmp8 = load i8, i8* %offsetval7, align 1
  %signExtendTmp9 = sext i8 %loadtmp8 to i64
  %addtemp = add i64 %multemp, %signExtendTmp9
  store i64 %addtemp, i64* %hash, align 4
  %incOrDecDerefTemp = load i64, i64* %i, align 4
  %incdectemp = add i64 %incOrDecDerefTemp, 1
  store i64 %incdectemp, i64* %i, align 4
  %loadtmp10 = load i8*, i8** %str1, align 8
  %loadtmp11 = load i64, i64* %i, align 4
  %offsetval12 = getelementptr i8, i8* %loadtmp10, i64 %loadtmp11
  %loadtmp13 = load i8, i8* %offsetval12, align 1
  %signExtendTmp14 = sext i8 %loadtmp13 to i32
  %cmptmp15 = icmp ne i32 %signExtendTmp14, 0
  br i1 %cmptmp15, label %loopstart, label %loopend

loopend:                                          ; preds = %loopstart, %entry
  %loadtmp16 = load i64, i64* %hash, align 4
  %0 = trunc i64 %loadtmp16 to i32
  ret i32 %0
}

define i32 @main(i32 %argc, i8** %args) {
entry:
  %argc1 = alloca i32, align 4
  store i32 %argc, i32* %argc1, align 4
  %args2 = alloca i8**, align 8
  store i8** %args, i8*** %args2, align 8
  %loadtmp = load i32, i32* %argc1, align 4
  %cmptmp = icmp eq i32 %loadtmp, 1
  br i1 %cmptmp, label %ifstart, label %ifend

ifstart:                                          ; preds = %entry
  ret i32 0
  br label %glblifend

ifend:                                            ; preds = %entry
  br label %glblifend

glblifend:                                        ; preds = %ifend, %ifstart
  %cmd = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %cmd, align 8
  %calltmp = call i8* @calloc(i64 1, i64 700)
  store i8* %calltmp, i8** %cmd, align 8
  %loadtmp3 = load i8**, i8*** %args2, align 8
  %offsetval = getelementptr i8*, i8** %loadtmp3, i32 1
  %loadtmp4 = load i8*, i8** %offsetval, align 8
  %calltmp5 = call i32 @hash(i8* %loadtmp4)
  switch i32 %calltmp5, label %body293 [
    i32 5863769, label %body
    i32 357257007, label %body43
    i32 2090500240, label %body69
    i32 193489342, label %body104
    i32 1132745181, label %body162
    i32 2090720079, label %body187
    i32 550515207, label %body210
    i32 2090607556, label %body255
    i32 193486030, label %body275
  ]

body293:                                          ; preds = %glblifend
  %loadtmp294 = load i8**, i8*** %args2, align 8
  %offsetval295 = getelementptr i8*, i8** %loadtmp294, i32 1
  %loadtmp296 = load i8*, i8** %offsetval295, align 8
  %calltmp297 = call i32 @hash(i8* %loadtmp296)
  %printftemp298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @Sconst.53, i32 0, i32 0), i32 %calltmp297)
  ret i32 0
  br label %glblswitchend

body275:                                          ; preds = %glblifend
  %f276 = alloca %file, i64 1, align 8
  store %file zeroinitializer, %file* %f276, align 8
  %calltmp277 = call %file* @file_constructor(%file* %f276, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @Sconst.51, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @Sconst.52, i32 0, i32 0))
  %i = alloca i32, i64 1, align 4
  store i32 zeroinitializer, i32* %i, align 4
  store i32 2, i32* %i, align 4
  %loadtmp280 = load i32, i32* %i, align 4
  %loadtmp281 = load i32, i32* %argc1, align 4
  %subtmp282 = icmp slt i32 %loadtmp280, %loadtmp281
  br i1 %subtmp282, label %loopstart278, label %loopend279

body255:                                          ; preds = %glblifend
  %calltmp256 = call i32 @system(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @Sconst.47, i32 0, i32 0))
  %calltmp257 = call i32 @pack()
  %loadtmp261 = load i32, i32* %argc1, align 4
  %addtemp = icmp sgt i32 %loadtmp261, 2
  br i1 %addtemp, label %ifstart259, label %ifend260

body210:                                          ; preds = %glblifend
  %calltmp211 = call i32 @pack()
  %calltmp212 = call i32 @system(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @Sconst.40, i32 0, i32 0))
  %loadtmp213 = load i8*, i8** %cmd, align 8
  %loadtmp214 = load i8**, i8*** %args2, align 8
  %offsetval215 = getelementptr i8*, i8** %loadtmp214, i32 2
  %loadtmp216 = load i8*, i8** %offsetval215, align 8
  %calltmp217 = call i32 @sprintf(i8* %loadtmp213, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @Sconst.41, i32 0, i32 0), i8* %loadtmp216)
  %loadtmp218 = load i8*, i8** %cmd, align 8
  %calltmp219 = call i32 @system(i8* %loadtmp218)
  %f220 = alloca %file, i64 1, align 8
  store %file zeroinitializer, %file* %f220, align 8
  %calltmp221 = call %file* @file_constructor(%file* %f220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @Sconst.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.43, i32 0, i32 0))
  %line224 = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %line224, align 8
  %calltmp225 = call i8* @readLine(%file* %f220)
  store i8* %calltmp225, i8** %line224, align 8
  %calltmp226 = call i1 @eof(%file* %f220)
  %cmptmp227 = icmp eq i1 %calltmp226, false
  br i1 %cmptmp227, label %loopstart222, label %loopend223

body187:                                          ; preds = %glblifend
  %loadtmp191 = load i32, i32* %argc1, align 4
  %subtmp192 = icmp slt i32 %loadtmp191, 4
  br i1 %subtmp192, label %ifstart189, label %ifend190

body162:                                          ; preds = %glblifend
  %loadtmp166 = load i32, i32* %argc1, align 4
  %subtmp167 = icmp slt i32 %loadtmp166, 4
  br i1 %subtmp167, label %ifstart164, label %ifend165

body104:                                          ; preds = %glblifend
  %loadtmp108 = load i32, i32* %argc1, align 4
  %subtmp109 = icmp slt i32 %loadtmp108, 4
  br i1 %subtmp109, label %ifstart106, label %ifend107

body69:                                           ; preds = %glblifend
  %loadtmp73 = load i32, i32* %argc1, align 4
  %subtmp74 = icmp slt i32 %loadtmp73, 3
  br i1 %subtmp74, label %ifstart71, label %ifend72

body43:                                           ; preds = %glblifend
  %loadtmp47 = load i32, i32* %argc1, align 4
  %subtmp = icmp slt i32 %loadtmp47, 4
  br i1 %subtmp, label %ifstart45, label %ifend46

body:                                             ; preds = %glblifend
  %cmd2 = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %cmd2, align 8
  %calltmp6 = call i8* @calloc(i64 1, i64 1000)
  store i8* %calltmp6, i8** %cmd2, align 8
  %loadtmp7 = load i8*, i8** %cmd2, align 8
  %calltmp8 = call i8* @strcat(i8* %loadtmp7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @Sconst.12, i32 0, i32 0))
  %loadtmp9 = load i8*, i8** %cmd2, align 8
  %calltmp10 = call i32 @system(i8* %loadtmp9)
  %loadtmp11 = load i8*, i8** %cmd2, align 8
  %freedValue = call i8* @free(i8* %loadtmp11)
  %f = alloca %file, i64 1, align 8
  store %file zeroinitializer, %file* %f, align 8
  %calltmp12 = call %file* @file_constructor(%file* %f, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @Sconst.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.14, i32 0, i32 0))
  %line = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %line, align 8
  %calltmp13 = call i8* @readLine(%file* %f)
  store i8* %calltmp13, i8** %line, align 8
  %calltmp14 = call i1 @eof(%file* %f)
  %cmptmp15 = icmp eq i1 %calltmp14, false
  br i1 %cmptmp15, label %loopstart, label %loopend

glblswitchend:                                    ; preds = %body293, %loopend279, %glblifend258, %loopend223, %glblifend188, %ifstart189, %glblifend163, %ifstart164, %glblifend105, %ifstart106, %glblifend70, %ifstart71, %glblifend44, %loopend
  %printftemp299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @Sconst.54, i32 0, i32 0))
  ret i32 0

loopstart:                                        ; preds = %loopstart, %body
  %endfile = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %endfile, align 8
  %loadtmp16 = load i8*, i8** %line, align 8
  %calltmp17 = call i8* @replaceFirst(i8* %loadtmp16, i8 59, i8 0)
  store i8* %calltmp17, i8** %endfile, align 8
  %loadtmp18 = load i8*, i8** %cmd, align 8
  %calltmp19 = call i8* @strcpy(i8* %loadtmp18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @Sconst.15, i32 0, i32 0))
  %loadtmp20 = load i8*, i8** %cmd, align 8
  %loadtmp21 = load i8*, i8** %endfile, align 8
  %calltmp22 = call i8* @strcat(i8* %loadtmp20, i8* %loadtmp21)
  %loadtmp23 = load i8*, i8** %cmd, align 8
  %calltmp24 = call i8* @strcat(i8* %loadtmp23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @Sconst.16, i32 0, i32 0))
  %loadtmp25 = load i8*, i8** %cmd, align 8
  %loadtmp26 = load i8*, i8** %line, align 8
  %calltmp27 = call i8* @strcat(i8* %loadtmp25, i8* %loadtmp26)
  %loadtmp28 = load i8*, i8** %cmd, align 8
  %calltmp29 = call i8* @strcat(i8* %loadtmp28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.17, i32 0, i32 0))
  %loadtmp30 = load i8*, i8** %cmd, align 8
  %loadtmp31 = load i8*, i8** %endfile, align 8
  %calltmp32 = call i8* @strcat(i8* %loadtmp30, i8* %loadtmp31)
  %loadtmp33 = load i8*, i8** %cmd, align 8
  %printftemp = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1, i32 0, i32 0), i8* %loadtmp33)
  %loadtmp34 = load i8*, i8** %cmd, align 8
  %calltmp35 = call i32 @system(i8* %loadtmp34)
  %loadtmp36 = load i8*, i8** %line, align 8
  %freedValue37 = call i8* @free(i8* %loadtmp36)
  %calltmp38 = call i8* @readLine(%file* %f)
  store i8* %calltmp38, i8** %line, align 8
  %calltmp39 = call i1 @eof(%file* %f)
  %cmptmp40 = icmp eq i1 %calltmp39, false
  br i1 %cmptmp40, label %loopstart, label %loopend

loopend:                                          ; preds = %loopstart, %body
  %loadtmp41 = load i8*, i8** %cmd, align 8
  %freedValue42 = call i8* @free(i8* %loadtmp41)
  br label %glblswitchend

ifstart45:                                        ; preds = %body43
  %printftemp48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @Sconst.18, i32 0, i32 0))
  br label %glblifend44

ifend46:                                          ; preds = %body43
  br label %glblifend44

glblifend44:                                      ; preds = %ifend46, %ifstart45
  %loadtmp49 = load i8*, i8** %cmd, align 8
  %calltmp50 = call i8* @strcat(i8* %loadtmp49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Sconst.19, i32 0, i32 0))
  %loadtmp51 = load i8*, i8** %cmd, align 8
  %loadtmp52 = load i8**, i8*** %args2, align 8
  %offsetval53 = getelementptr i8*, i8** %loadtmp52, i32 2
  %loadtmp54 = load i8*, i8** %offsetval53, align 8
  %calltmp55 = call i8* @strcat(i8* %loadtmp51, i8* %loadtmp54)
  %loadtmp56 = load i8*, i8** %cmd, align 8
  %calltmp57 = call i8* @strcat(i8* %loadtmp56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Sconst.20, i32 0, i32 0))
  %loadtmp58 = load i8*, i8** %cmd, align 8
  %loadtmp59 = load i8**, i8*** %args2, align 8
  %offsetval60 = getelementptr i8*, i8** %loadtmp59, i32 3
  %loadtmp61 = load i8*, i8** %offsetval60, align 8
  %calltmp62 = call i8* @strcat(i8* %loadtmp58, i8* %loadtmp61)
  %loadtmp63 = load i8*, i8** %cmd, align 8
  %calltmp64 = call i8* @strcat(i8* %loadtmp63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @Sconst.21, i32 0, i32 0))
  %loadtmp65 = load i8*, i8** %cmd, align 8
  %printftemp66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i32 0, i32 0), i8* %loadtmp65)
  %loadtmp67 = load i8*, i8** %cmd, align 8
  %calltmp68 = call i32 @system(i8* %loadtmp67)
  br label %glblswitchend

ifstart71:                                        ; preds = %body69
  %printftemp75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @Sconst.22, i32 0, i32 0))
  br label %glblswitchend
  br label %glblifend70

ifend72:                                          ; preds = %body69
  br label %glblifend70

glblifend70:                                      ; preds = %ifend72, %ifstart71
  %filename = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %filename, align 8
  %calltmp76 = call i8* @calloc(i64 1, i64 1000)
  store i8* %calltmp76, i8** %filename, align 8
  %loadtmp77 = load i8*, i8** %filename, align 8
  %loadtmp78 = load i8**, i8*** %args2, align 8
  %offsetval79 = getelementptr i8*, i8** %loadtmp78, i32 2
  %loadtmp80 = load i8*, i8** %offsetval79, align 8
  %calltmp81 = call i8* @strcat(i8* %loadtmp77, i8* %loadtmp80)
  %loadtmp82 = load i8*, i8** %filename, align 8
  %offsetval83 = getelementptr i8, i8* %loadtmp82, i32 0
  store i8 66, i8* %offsetval83, align 1
  %loadtmp84 = load i8*, i8** %filename, align 8
  %offsetval85 = getelementptr i8, i8* %loadtmp84, i32 1
  store i8 65, i8* %offsetval85, align 1
  %loadtmp86 = load i8*, i8** %filename, align 8
  %offsetval87 = getelementptr i8, i8* %loadtmp86, i32 2
  store i8 68, i8* %offsetval87, align 1
  %loadtmp88 = load i8*, i8** %cmd, align 8
  %calltmp89 = call i8* @strcat(i8* %loadtmp88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Sconst.23, i32 0, i32 0))
  %loadtmp90 = load i8*, i8** %cmd, align 8
  %loadtmp91 = load i8**, i8*** %args2, align 8
  %offsetval92 = getelementptr i8*, i8** %loadtmp91, i32 2
  %loadtmp93 = load i8*, i8** %offsetval92, align 8
  %calltmp94 = call i8* @strcat(i8* %loadtmp90, i8* %loadtmp93)
  %loadtmp95 = load i8*, i8** %cmd, align 8
  %calltmp96 = call i8* @strcat(i8* %loadtmp95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.24, i32 0, i32 0))
  %loadtmp97 = load i8*, i8** %cmd, align 8
  %loadtmp98 = load i8*, i8** %filename, align 8
  %calltmp99 = call i8* @strcat(i8* %loadtmp97, i8* %loadtmp98)
  %loadtmp100 = load i8*, i8** %cmd, align 8
  %calltmp101 = call i32 @system(i8* %loadtmp100)
  %loadtmp102 = load i8*, i8** %filename, align 8
  %freedValue103 = call i8* @free(i8* %loadtmp102)
  br label %glblswitchend

ifstart106:                                       ; preds = %body104
  %printftemp110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @Sconst.25, i32 0, i32 0))
  br label %glblswitchend
  br label %glblifend105

ifend107:                                         ; preds = %body104
  br label %glblifend105

glblifend105:                                     ; preds = %ifend107, %ifstart106
  %scp = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %scp, align 8
  %calltmp111 = call i8* @calloc(i64 1, i64 1000)
  store i8* %calltmp111, i8** %scp, align 8
  %loadtmp112 = load i8*, i8** %scp, align 8
  %calltmp113 = call i8* @strcat(i8* %loadtmp112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Sconst.26, i32 0, i32 0))
  %loadtmp114 = load i8*, i8** %scp, align 8
  %loadtmp115 = load i8**, i8*** %args2, align 8
  %offsetval116 = getelementptr i8*, i8** %loadtmp115, i32 2
  %loadtmp117 = load i8*, i8** %offsetval116, align 8
  %calltmp118 = call i8* @strcat(i8* %loadtmp114, i8* %loadtmp117)
  %loadtmp119 = load i8*, i8** %scp, align 8
  %calltmp120 = call i8* @strcat(i8* %loadtmp119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.27, i32 0, i32 0))
  %loadtmp121 = load i8*, i8** %scp, align 8
  %loadtmp122 = load i8**, i8*** %args2, align 8
  %offsetval123 = getelementptr i8*, i8** %loadtmp122, i32 4
  %loadtmp124 = load i8*, i8** %offsetval123, align 8
  %calltmp125 = call i8* @strcat(i8* %loadtmp121, i8* %loadtmp124)
  %loadtmp126 = load i8*, i8** %scp, align 8
  %calltmp127 = call i8* @strcat(i8* %loadtmp126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.28, i32 0, i32 0))
  %loadtmp128 = load i8*, i8** %scp, align 8
  %loadtmp129 = load i8**, i8*** %args2, align 8
  %offsetval130 = getelementptr i8*, i8** %loadtmp129, i32 3
  %loadtmp131 = load i8*, i8** %offsetval130, align 8
  %calltmp132 = call i8* @strcat(i8* %loadtmp128, i8* %loadtmp131)
  %loadtmp133 = load i8*, i8** %scp, align 8
  %printftemp134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* %loadtmp133)
  %loadtmp135 = load i8*, i8** %scp, align 8
  %calltmp136 = call i32 @system(i8* %loadtmp135)
  %loadtmp137 = load i8*, i8** %cmd, align 8
  %calltmp138 = call i8* @strcat(i8* %loadtmp137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Sconst.29, i32 0, i32 0))
  %loadtmp139 = load i8*, i8** %cmd, align 8
  %loadtmp140 = load i8**, i8*** %args2, align 8
  %offsetval141 = getelementptr i8*, i8** %loadtmp140, i32 4
  %loadtmp142 = load i8*, i8** %offsetval141, align 8
  %calltmp143 = call i8* @strcat(i8* %loadtmp139, i8* %loadtmp142)
  %loadtmp144 = load i8*, i8** %cmd, align 8
  %calltmp145 = call i8* @strcat(i8* %loadtmp144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Sconst.30, i32 0, i32 0))
  %loadtmp146 = load i8*, i8** %cmd, align 8
  %loadtmp147 = load i8**, i8*** %args2, align 8
  %offsetval148 = getelementptr i8*, i8** %loadtmp147, i32 3
  %loadtmp149 = load i8*, i8** %offsetval148, align 8
  %calltmp150 = call i8* @strcat(i8* %loadtmp146, i8* %loadtmp149)
  %loadtmp151 = load i8*, i8** %cmd, align 8
  %calltmp152 = call i8* @strcat(i8* %loadtmp151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @Sconst.31, i32 0, i32 0))
  %loadtmp153 = load i8*, i8** %cmd, align 8
  %loadtmp154 = load i8**, i8*** %args2, align 8
  %offsetval155 = getelementptr i8*, i8** %loadtmp154, i32 2
  %loadtmp156 = load i8*, i8** %offsetval155, align 8
  %calltmp157 = call i8* @strcat(i8* %loadtmp153, i8* %loadtmp156)
  %loadtmp158 = load i8*, i8** %cmd, align 8
  %calltmp159 = call i8* @strcat(i8* %loadtmp158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.32, i32 0, i32 0))
  %loadtmp160 = load i8*, i8** %cmd, align 8
  %calltmp161 = call i32 @system(i8* %loadtmp160)
  br label %glblswitchend

ifstart164:                                       ; preds = %body162
  %printftemp168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @Sconst.33, i32 0, i32 0))
  br label %glblswitchend
  br label %glblifend163

ifend165:                                         ; preds = %body162
  br label %glblifend163

glblifend163:                                     ; preds = %ifend165, %ifstart164
  %loadtmp169 = load i8*, i8** %cmd, align 8
  %calltmp170 = call i8* @strcat(i8* %loadtmp169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @Sconst.34, i32 0, i32 0))
  %loadtmp171 = load i8*, i8** %cmd, align 8
  %loadtmp172 = load i8**, i8*** %args2, align 8
  %offsetval173 = getelementptr i8*, i8** %loadtmp172, i32 4
  %loadtmp174 = load i8*, i8** %offsetval173, align 8
  %calltmp175 = call i8* @strcat(i8* %loadtmp171, i8* %loadtmp174)
  %loadtmp176 = load i8*, i8** %cmd, align 8
  %calltmp177 = call i8* @strcat(i8* %loadtmp176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.35, i32 0, i32 0))
  %loadtmp178 = load i8*, i8** %cmd, align 8
  %loadtmp179 = load i8**, i8*** %args2, align 8
  %offsetval180 = getelementptr i8*, i8** %loadtmp179, i32 2
  %loadtmp181 = load i8*, i8** %offsetval180, align 8
  %calltmp182 = call i8* @strcat(i8* %loadtmp178, i8* %loadtmp181)
  %loadtmp183 = load i8*, i8** %cmd, align 8
  %calltmp184 = call i8* @strcat(i8* %loadtmp183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @Sconst.36, i32 0, i32 0))
  %loadtmp185 = load i8*, i8** %cmd, align 8
  %calltmp186 = call i32 @system(i8* %loadtmp185)
  br label %glblswitchend

ifstart189:                                       ; preds = %body187
  %printftemp193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Sconst.37, i32 0, i32 0))
  br label %glblswitchend
  br label %glblifend188

ifend190:                                         ; preds = %body187
  br label %glblifend188

glblifend188:                                     ; preds = %ifend190, %ifstart189
  %loadtmp194 = load i8*, i8** %cmd, align 8
  %calltmp195 = call i8* @strcat(i8* %loadtmp194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Sconst.38, i32 0, i32 0))
  %loadtmp196 = load i8*, i8** %cmd, align 8
  %loadtmp197 = load i8**, i8*** %args2, align 8
  %offsetval198 = getelementptr i8*, i8** %loadtmp197, i32 2
  %loadtmp199 = load i8*, i8** %offsetval198, align 8
  %calltmp200 = call i8* @strcat(i8* %loadtmp196, i8* %loadtmp199)
  %loadtmp201 = load i8*, i8** %cmd, align 8
  %calltmp202 = call i8* @strcat(i8* %loadtmp201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.39, i32 0, i32 0))
  %loadtmp203 = load i8*, i8** %cmd, align 8
  %loadtmp204 = load i8**, i8*** %args2, align 8
  %offsetval205 = getelementptr i8*, i8** %loadtmp204, i32 3
  %loadtmp206 = load i8*, i8** %offsetval205, align 8
  %calltmp207 = call i8* @strcat(i8* %loadtmp203, i8* %loadtmp206)
  %loadtmp208 = load i8*, i8** %cmd, align 8
  %calltmp209 = call i32 @system(i8* %loadtmp208)
  br label %glblswitchend

loopstart222:                                     ; preds = %loopstart222, %body210
  %endfile228 = alloca i8*, i64 1, align 8
  store i8* zeroinitializer, i8** %endfile228, align 8
  %loadtmp229 = load i8*, i8** %line224, align 8
  %calltmp230 = call i8* @replaceFirst(i8* %loadtmp229, i8 59, i8 0)
  store i8* %calltmp230, i8** %endfile228, align 8
  %loadtmp231 = load i8*, i8** %cmd, align 8
  %calltmp232 = call i8* @strcpy(i8* %loadtmp231, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @Sconst.44, i32 0, i32 0))
  %loadtmp233 = load i8*, i8** %cmd, align 8
  %loadtmp234 = load i8*, i8** %endfile228, align 8
  %calltmp235 = call i8* @strcat(i8* %loadtmp233, i8* %loadtmp234)
  %loadtmp236 = load i8*, i8** %cmd, align 8
  %calltmp237 = call i8* @strcat(i8* %loadtmp236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @Sconst.45, i32 0, i32 0))
  %loadtmp238 = load i8*, i8** %cmd, align 8
  %loadtmp239 = load i8*, i8** %line224, align 8
  %calltmp240 = call i8* @strcat(i8* %loadtmp238, i8* %loadtmp239)
  %loadtmp241 = load i8*, i8** %cmd, align 8
  %calltmp242 = call i8* @strcat(i8* %loadtmp241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Sconst.46, i32 0, i32 0))
  %loadtmp243 = load i8*, i8** %cmd, align 8
  %loadtmp244 = load i8*, i8** %endfile228, align 8
  %calltmp245 = call i8* @strcat(i8* %loadtmp243, i8* %loadtmp244)
  %loadtmp246 = load i8*, i8** %cmd, align 8
  %calltmp247 = call i32 @system(i8* %loadtmp246)
  %loadtmp248 = load i8*, i8** %line224, align 8
  %freedValue249 = call i8* @free(i8* %loadtmp248)
  %calltmp250 = call i8* @readLine(%file* %f220)
  store i8* %calltmp250, i8** %line224, align 8
  %calltmp251 = call i1 @eof(%file* %f220)
  %cmptmp252 = icmp eq i1 %calltmp251, false
  br i1 %cmptmp252, label %loopstart222, label %loopend223

loopend223:                                       ; preds = %loopstart222, %body210
  %loadtmp253 = load i8*, i8** %cmd, align 8
  %freedValue254 = call i8* @free(i8* %loadtmp253)
  br label %glblswitchend

ifstart259:                                       ; preds = %body255
  %loadtmp262 = load i8*, i8** %cmd, align 8
  %calltmp263 = call i8* @strcat(i8* %loadtmp262, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @Sconst.48, i32 0, i32 0))
  %loadtmp264 = load i8*, i8** %cmd, align 8
  %calltmp265 = call i8* @strcat(i8* %loadtmp264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Sconst.49, i32 0, i32 0))
  %loadtmp266 = load i8*, i8** %cmd, align 8
  %loadtmp267 = load i8**, i8*** %args2, align 8
  %offsetval268 = getelementptr i8*, i8** %loadtmp267, i32 2
  %loadtmp269 = load i8*, i8** %offsetval268, align 8
  %calltmp270 = call i8* @strcat(i8* %loadtmp266, i8* %loadtmp269)
  %loadtmp271 = load i8*, i8** %cmd, align 8
  %calltmp272 = call i8* @strcat(i8* %loadtmp271, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @Sconst.50, i32 0, i32 0))
  %loadtmp273 = load i8*, i8** %cmd, align 8
  %calltmp274 = call i32 @system(i8* %loadtmp273)
  br label %glblifend258

ifend260:                                         ; preds = %body255
  br label %glblifend258

glblifend258:                                     ; preds = %ifend260, %ifstart259
  br label %glblswitchend

loopstart278:                                     ; preds = %loopstart278, %body275
  %loadtmp283 = load i8**, i8*** %args2, align 8
  %loadtmp284 = load i32, i32* %i, align 4
  %offsetval285 = getelementptr i8*, i8** %loadtmp283, i32 %loadtmp284
  %loadtmp286 = load i8*, i8** %offsetval285, align 8
  %calltmp287 = call i1 @write(%file* %f276, i8* %loadtmp286)
  %calltmp288 = call i1 @writeChar(%file* %f276, i8 10)
  %incOrDecDerefTemp = load i32, i32* %i, align 4
  %incdectemp = add i32 %incOrDecDerefTemp, 1
  store i32 %incdectemp, i32* %i, align 4
  %loadtmp289 = load i32, i32* %i, align 4
  %loadtmp290 = load i32, i32* %argc1, align 4
  %subtmp291 = icmp slt i32 %loadtmp289, %loadtmp290
  br i1 %subtmp291, label %loopstart278, label %loopend279

loopend279:                                       ; preds = %loopstart278, %body275
  %calltmp292 = call i1 @close(%file* %f276)
  br label %glblswitchend
}
