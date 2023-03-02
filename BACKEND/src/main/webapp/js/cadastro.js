function cadastrar() {
      const nameInput = document.getElementById('nome');
      const emailInput = document.getElementById('email');
      const rgInput = document.getElementById('rg');

        const name = nameInput.value;
        const email = emailInput.value;
        const rg = rgInput.value;
        

        if (!name || name.trim() === '') {
          alert('Por favor, informe o nome.');
          nameInput.focus();
          return false;
        }

        if (!email || email.trim() === '') {
          alert('Por favor, informe o e-mail.');
          emailInput.focus();
          return false;
        }

        if (!rg || rg.trim() === '') {
            alert('Por favor, informe o RG.');
            rgInput.focus();
            return false;
          }
        
          alert('Anuali cadastrado com sucesso!');
          return true;
        }
        



        