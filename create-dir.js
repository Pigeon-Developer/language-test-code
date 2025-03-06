const fs = require('fs');
const path = require('path');

const langs = [
    'bash',
    'c',
    'cangjie',
    'objectivec',
    'cobol',
    'cpp',
    'csharp',
    'fortran',
    'freebasic',
    'golang',
    'java',
    'javascript',
    'lua',
    'matlab',
    'pascal',
    'perl',
    'php',
    'python',
    'r',
    'ruby',
    'scheme',
    'scratch3',
];


const prefix = process.argv[2]

async function createDir() {
    for (const element of langs) {
        const dir = path.join(__dirname, prefix, element)
        if (!fs.existsSync(dir)) {
            fs.mkdirSync(dir, {
                recursive: true
            });
            console.log('created:', dir)
        }
    }
}

createDir()
