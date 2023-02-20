const express = require('express')
const router = express.Router();
const {tester,addNote,deleteNote,getAllnotes,findById,updateNote, searchNote, generateExcelFromDbWithoutClient, dowloadExcel, generatePDFfromHtml, dowloadPDF, generatePDFfromHtmlBodyData} = require('../Controllers/noteControllers');

// routes as middelwares
router.get('/msg',tester);
router.post('/note/add',addNote);
router.get('/notes',getAllnotes);
router.delete('/delete/:id',deleteNote);
router.get('/getOne/:id',findById);
router.put('/update/:id',updateNote);
router.post('/note/search/',searchNote);
router.get('/note/generatexcel',generateExcelFromDbWithoutClient);
router.get('/note/dowloadexcel',dowloadExcel)
router.get('/note/generatepdfromhtml',generatePDFfromHtml)
router.get('/note/dowloadpdf',dowloadPDF)
router.post('/note/generatepdfromhtmlbodydata',generatePDFfromHtmlBodyData)
module.exports=router;
