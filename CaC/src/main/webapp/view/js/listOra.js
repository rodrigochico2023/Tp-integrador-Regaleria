//delete modal
const deleteModal = document.getElementById('deleteModal')
if (deleteModal) {
  deleteModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    const recipient = button.getAttribute('data-bs-whatever')
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const modalTitle = deleteModal.querySelector('.modal-title')
    const modalBodyInput = deleteModal.querySelector('.modal-body input')

    modalBodyInput.value = recipient
  })
}


// update modal

const updateModal = document.getElementById('updateModal')
if (updateModal) {
  updateModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    let idUpd = button.getAttribute('idUpd')
    let prod = button.getAttribute('prod')
    let desc = button.getAttribute('desc')
    let cant = button.getAttribute('cant')
    let pre = button.getAttribute('pre')
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    document.getElementById('idUpd').value=idUpd
    document.getElementById('prod').value=prod
    document.getElementById('desc').value=desc
    document.getElementById('cant').value=cant
    document.getElementById('pre').value=pre
      })
}
