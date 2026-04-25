#!/bin/bash
# GitHub 업로드 스크립트
# 이 파일을 더블클릭하면 자동으로 GitHub에 업로드됩니다

cd "$(dirname "$0")"

echo "📁 현재 폴더: $(pwd)"
echo ""

# git 초기화
echo "🔧 git 설정 중..."
rm -rf .git
git init
git branch -m main

# remote 설정
git remote add origin https://github.com/collette1009/portfolio-socar.git

# 파일 추가
echo "📦 파일 추가 중..."
git add index.html case1.html case2.html case3.html case4.html img/

# commit
echo "💾 커밋 중..."
git -c user.email="heeeun@choroc.com" -c user.name="collette1009" commit -m "NDA 처리: Slack 목업 이미지, 이력서 금액 익명화, case2 업데이트"

# push
echo ""
echo "🚀 GitHub에 업로드 중..."
echo "   (GitHub 로그인 창이 뜨면 로그인해주세요)"
echo ""
git push -u origin main --force

echo ""
echo "✅ 완료! 아래 링크에서 확인하세요:"
echo "   🌐 https://collette1009.github.io/portfolio-socar/"
echo ""
read -p "아무 키나 눌러서 종료..."
