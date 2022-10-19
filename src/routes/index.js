const siteRouter = require('./site')
const registerRouter = require('./register')
const loginRouter = require('./login')
const profileRouter = require('./profile')
const categoryRouter = require('./category')
const supplierRouter = require('./supplier')
const productRouter = require('./product')
const shopRouter = require('./shop')
const cartRouter = require('./cart')
const checkoutRouter = require('./checkout')
const orderRouter = require('./order')
const userRouter = require('./user')
const contactRouter = require('./contact')
const authMiddleware = require('../app/middlewares/AuthMiddleware')

function route(app) {
    app.use('/manage/contact', authMiddleware.admin, contactRouter)
    app.use('/manage/order', authMiddleware.admin, orderRouter)
    app.use('/manage/shop', authMiddleware.admin, shopRouter)
    app.use('/manage/product', authMiddleware.admin, productRouter)
    app.use('/manage/supplier', authMiddleware.admin, supplierRouter)
    app.use('/manage/category', authMiddleware.admin, categoryRouter)
    app.use('/profile', authMiddleware.loggedin, profileRouter)
    app.use('/login', authMiddleware.isAuth, loginRouter)
    app.use('/register', authMiddleware.isAuth, registerRouter)
    app.use('/cart', authMiddleware.loggedin, cartRouter)
    app.use('/checkout', authMiddleware.loggedin, checkoutRouter)
    app.use('/user', authMiddleware.loggedin, userRouter)
    app.use('/', siteRouter)
}

module.exports = route;