rjsx-mode

(expgql "export default compose(" n>
        "graphql(" (p "queryOrMutation") ", { name: " (p "name") " })," n
        ")(" (p (file-name-base (or (buffer-file-name) "Component"))) ")" >)

(tst
 "import React from 'react'" n
 "import renderer from 'react-test-renderer'" n n
 "import { "
 (p (file-name-base (or (buffer-file-name) "Component")) component)
 " } from '../" (s component) "'" n n
 "describe('<" (s component) " />', () => {" n>
 "const defaultProps = {}" n>
 "const wrapper = renderer.create(<" (s component)
 " {...defaultProps} />)" n n>
 "test('render', () => {" n>
 "expect(wrapper).toMatchSnapshot()" n
 "})" > n
 "})" >)

(tstredux
 "import React from 'react'" n
 "import renderer from 'react-test-renderer'" n
 "import { Provider } from 'react-redux'" n n
 "import store from 'src/store'" n
 "import { "
 (p (file-name-base (or (buffer-file-name) "Component")) component)
 " } from '../" (s component) "'" n n
 "describe('<" (s component) " />', () => {" n>
 "const defaultProps = {}" n>
 "const wrapper = renderer.create(" n>
 "<Provider store={store}>" n>
 "<" (s component) " {...defaultProps} />" n
 "</Provider>," > n
 ")" > n n>
 "test('render', () => {" n>
 "expect(wrapper).toMatchSnapshot()" n
 "})" > n
 "})" >)

(rntst
 "import 'react-native'" n
 "import React from 'react'" n
 "import renderer from 'react-test-renderer'" n n
 "import "
 (p (file-name-base (or (buffer-file-name) "Component")) component)
 " from '../" (s component) "'" n n
 "describe('<" (s component) " />', () => {" n>
 "const defaultProps = {}" n>
 "const wrapper = renderer.create(<" (s component)
 " {...defaultProps} />)" n n>
 "test('render', () => {" n>
 "expect(wrapper).toMatchSnapshot()" n
 "})" > n
 "})" >)

(rntstredux
 "import 'react-native'" n
 "import React from 'react'" n
 "import renderer from 'react-test-renderer'" n
 "import { Provider } from 'react-redux'" n n
 "import store from 'src/store'" n
 "import "
 (p (file-name-base (or (buffer-file-name) "Component")) component)
 " from '../" (s component) "'" n n
 "describe('<" (s component) " />', () => {" n>
 "const defaultProps = {}" n>
 "const wrapper = renderer.create(" n>
 "<Provider store={store}>" n>
 "<" (s component) " {...defaultProps} />" n
 "</Provider>," > n
 ")" > n n>
 "test('render', () => {" n>
 "expect(wrapper).toMatchSnapshot()" n
 "})" > n
 "})" >)

(reduxcnst "export const " (p "constantName" name) " = '" (s name) "'")

(rncmpredux
 "import React, { Component } from 'react'" n
 "import { View, Text } from 'react-native'" n
 "import PropTypes from 'prop-types'" n
 "import { connect } from 'react-redux'" n n
 "export class "
 (p (file-name-base (or (buffer-file-name) "Component")) component)
 " extends Component {" n>
 "static propTypes = {" n> (p "prop") ": " (p "PropTypes") n "}" > n n>
 "render() {" n>
 "return (" n>
 "<View>" n>
 "<Text>" (p "textInComponent") "</Text>" n
 "</View>" > n
 ")" > n
 "}" > n
 "}" > n n
 "const mapStateToProps = (state, ownProps) => ({" n> q n "})" > n n
 "const mapDispatchToProps = (dispatch, ownProps) => ({" n> p n "})" > n n
 "export default connect(mapStateToProps, mapDispatchToProps)("
 (s component) ")")

(hocredux
 "import React from 'react'" n
 "import PropTypes from 'prop-types'" n
 "import { connect } from 'react-redux'" n n
 "export const " (p "hocComponentName" hoc)
 " = (WrappedComponent) => {" n>
 "const hocComponent = (props) => <WrappedComponent {...props} />" n n>
 "hocComponent.propTypes = {" n> q n "}" > n n>
 "return hocComponent" n
 "}" > n n
 "const mapStateToProps = (state, ownProps) => ({" n> p n "})" > n n
 "const mapDispatchToProps = (dispatch, ownProps) => ({" n> p n "})" > n n
 "export default WrapperComponent => connect(mapStateToProps, "
 "mapDispatchToProps)(" (s hoc) "(WrapperComponent))")
