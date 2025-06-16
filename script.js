document.addEventListener('DOMContentLoaded', function() {
    const questions = document.querySelectorAll('.faq-question');
    
    questions.forEach(question => {
        question.addEventListener('click', () => {
            const item = question.parentElement;

            const answer = item.querySelector('.faq-answer');
            const icon = question.querySelector('.toggle-icon');
            
            const isActive = answer.classList.contains('active');
            
            document.querySelectorAll('.faq-answer').forEach(ans => {
                ans.classList.remove('active');
            });
            
            document.querySelectorAll('.toggle-icon').forEach(ic => {
                ic.classList.remove('active');
                ic.src ="./assets/images/icon-plus.svg"
            });
            
            if (!isActive) {
                answer.classList.add('active');
                icon.classList.add('active');
                icon.src = "./assets/images/icon-minus.svg";
            }
        });
    });
});