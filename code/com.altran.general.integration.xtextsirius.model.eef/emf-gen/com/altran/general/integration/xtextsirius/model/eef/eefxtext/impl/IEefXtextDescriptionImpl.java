/**
 * Copyright (C) 2018 Altran Netherlands B.V.
 *
 * This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 */
package com.altran.general.integration.xtextsirius.model.eef.eefxtext.impl;

import org.eclipse.eef.impl.EEFTextDescriptionImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

import com.altran.general.integration.xtextsirius.model.eef.eefxtext.EefxtextPackage;
import com.altran.general.integration.xtextsirius.model.eef.eefxtext.IEefXtextDescription;

/**
 * <!-- begin-user-doc --> An implementation of the model object '<em><b>IEef
 * Xtext Description</b></em>'. <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 * <li>{@link com.altran.general.integration.xtextsirius.model.eef.eefxtext.impl.IEefXtextDescriptionImpl#getInjectorId
 * <em>Injector Id</em>}</li>
 * <li>{@link com.altran.general.integration.xtextsirius.model.eef.eefxtext.impl.IEefXtextDescriptionImpl#isMultiLine
 * <em>Multi Line</em>}</li>
 * <li>{@link com.altran.general.integration.xtextsirius.model.eef.eefxtext.impl.IEefXtextDescriptionImpl#isCancelOnValidationError
 * <em>Cancel On Validation Error</em>}</li>
 * <li>{@link com.altran.general.integration.xtextsirius.model.eef.eefxtext.impl.IEefXtextDescriptionImpl#isEnableFormatter
 * <em>Enable Formatter</em>}</li>
 * </ul>
 *
 * @generated
 */
public abstract class IEefXtextDescriptionImpl extends EEFTextDescriptionImpl implements IEefXtextDescription {
	/**
	 * The default value of the '{@link #getInjectorId() <em>Injector Id</em>}'
	 * attribute. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @see #getInjectorId()
	 * @generated
	 * @ordered
	 */
	protected static final String INJECTOR_ID_EDEFAULT = null;
	
	/**
	 * The cached value of the '{@link #getInjectorId() <em>Injector Id</em>}'
	 * attribute. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @see #getInjectorId()
	 * @generated
	 * @ordered
	 */
	protected String injectorId = INJECTOR_ID_EDEFAULT;
	
	/**
	 * The default value of the '{@link #isMultiLine() <em>Multi Line</em>}'
	 * attribute. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @see #isMultiLine()
	 * @generated
	 * @ordered
	 */
	protected static final boolean MULTI_LINE_EDEFAULT = false;
	
	/**
	 * The cached value of the '{@link #isMultiLine() <em>Multi Line</em>}'
	 * attribute. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @see #isMultiLine()
	 * @generated
	 * @ordered
	 */
	protected boolean multiLine = MULTI_LINE_EDEFAULT;
	
	/**
	 * The default value of the '{@link #isCancelOnValidationError() <em>Cancel
	 * On Validation Error</em>}' attribute. <!-- begin-user-doc --> <!--
	 * end-user-doc -->
	 * 
	 * @see #isCancelOnValidationError()
	 * @generated
	 * @ordered
	 */
	protected static final boolean CANCEL_ON_VALIDATION_ERROR_EDEFAULT = false;
	
	/**
	 * The cached value of the '{@link #isCancelOnValidationError() <em>Cancel
	 * On Validation Error</em>}' attribute. <!-- begin-user-doc --> <!--
	 * end-user-doc -->
	 * 
	 * @see #isCancelOnValidationError()
	 * @generated
	 * @ordered
	 */
	protected boolean cancelOnValidationError = CANCEL_ON_VALIDATION_ERROR_EDEFAULT;
	
	/**
	 * The default value of the '{@link #isEnableFormatter() <em>Enable
	 * Formatter</em>}' attribute. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @see #isEnableFormatter()
	 * @generated
	 * @ordered
	 */
	protected static final boolean ENABLE_FORMATTER_EDEFAULT = true;
	
	/**
	 * The cached value of the '{@link #isEnableFormatter() <em>Enable
	 * Formatter</em>}' attribute. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @see #isEnableFormatter()
	 * @generated
	 * @ordered
	 */
	protected boolean enableFormatter = ENABLE_FORMATTER_EDEFAULT;
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	protected IEefXtextDescriptionImpl() {
		super();
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return EefxtextPackage.Literals.IEEF_XTEXT_DESCRIPTION;
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public String getInjectorId() {
		return this.injectorId;
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public void setInjectorId(final String newInjectorId) {
		final String oldInjectorId = this.injectorId;
		this.injectorId = newInjectorId;
		if (eNotificationRequired()) {
			eNotify(new ENotificationImpl(this, Notification.SET, EefxtextPackage.IEEF_XTEXT_DESCRIPTION__INJECTOR_ID,
					oldInjectorId, this.injectorId));
		}
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public boolean isMultiLine() {
		return this.multiLine;
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public void setMultiLine(final boolean newMultiLine) {
		final boolean oldMultiLine = this.multiLine;
		this.multiLine = newMultiLine;
		if (eNotificationRequired()) {
			eNotify(new ENotificationImpl(this, Notification.SET, EefxtextPackage.IEEF_XTEXT_DESCRIPTION__MULTI_LINE,
					oldMultiLine, this.multiLine));
		}
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public boolean isCancelOnValidationError() {
		return this.cancelOnValidationError;
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public void setCancelOnValidationError(final boolean newCancelOnValidationError) {
		final boolean oldCancelOnValidationError = this.cancelOnValidationError;
		this.cancelOnValidationError = newCancelOnValidationError;
		if (eNotificationRequired()) {
			eNotify(new ENotificationImpl(this, Notification.SET,
					EefxtextPackage.IEEF_XTEXT_DESCRIPTION__CANCEL_ON_VALIDATION_ERROR, oldCancelOnValidationError,
					this.cancelOnValidationError));
		}
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public boolean isEnableFormatter() {
		return this.enableFormatter;
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public void setEnableFormatter(final boolean newEnableFormatter) {
		final boolean oldEnableFormatter = this.enableFormatter;
		this.enableFormatter = newEnableFormatter;
		if (eNotificationRequired()) {
			eNotify(new ENotificationImpl(this, Notification.SET,
					EefxtextPackage.IEEF_XTEXT_DESCRIPTION__ENABLE_FORMATTER, oldEnableFormatter,
					this.enableFormatter));
		}
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public Object eGet(final int featureID, final boolean resolve, final boolean coreType) {
		switch (featureID) {
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__INJECTOR_ID:
				return getInjectorId();
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__MULTI_LINE:
				return isMultiLine();
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__CANCEL_ON_VALIDATION_ERROR:
				return isCancelOnValidationError();
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__ENABLE_FORMATTER:
				return isEnableFormatter();
		}
		return super.eGet(featureID, resolve, coreType);
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public void eSet(final int featureID, final Object newValue) {
		switch (featureID) {
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__INJECTOR_ID:
				setInjectorId((String) newValue);
				return;
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__MULTI_LINE:
				setMultiLine((Boolean) newValue);
				return;
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__CANCEL_ON_VALIDATION_ERROR:
				setCancelOnValidationError((Boolean) newValue);
				return;
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__ENABLE_FORMATTER:
				setEnableFormatter((Boolean) newValue);
				return;
		}
		super.eSet(featureID, newValue);
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public void eUnset(final int featureID) {
		switch (featureID) {
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__INJECTOR_ID:
				setInjectorId(INJECTOR_ID_EDEFAULT);
				return;
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__MULTI_LINE:
				setMultiLine(MULTI_LINE_EDEFAULT);
				return;
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__CANCEL_ON_VALIDATION_ERROR:
				setCancelOnValidationError(CANCEL_ON_VALIDATION_ERROR_EDEFAULT);
				return;
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__ENABLE_FORMATTER:
				setEnableFormatter(ENABLE_FORMATTER_EDEFAULT);
				return;
		}
		super.eUnset(featureID);
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public boolean eIsSet(final int featureID) {
		switch (featureID) {
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__INJECTOR_ID:
				return INJECTOR_ID_EDEFAULT == null ? this.injectorId != null
						: !INJECTOR_ID_EDEFAULT.equals(this.injectorId);
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__MULTI_LINE:
				return this.multiLine != MULTI_LINE_EDEFAULT;
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__CANCEL_ON_VALIDATION_ERROR:
				return this.cancelOnValidationError != CANCEL_ON_VALIDATION_ERROR_EDEFAULT;
			case EefxtextPackage.IEEF_XTEXT_DESCRIPTION__ENABLE_FORMATTER:
				return this.enableFormatter != ENABLE_FORMATTER_EDEFAULT;
		}
		return super.eIsSet(featureID);
	}
	
	/**
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public String toString() {
		if (eIsProxy()) {
			return super.toString();
		}
		
		final StringBuilder result = new StringBuilder(super.toString());
		result.append(" (injectorId: ");
		result.append(this.injectorId);
		result.append(", multiLine: ");
		result.append(this.multiLine);
		result.append(", cancelOnValidationError: ");
		result.append(this.cancelOnValidationError);
		result.append(", enableFormatter: ");
		result.append(this.enableFormatter);
		result.append(')');
		return result.toString();
	}
	
} // IEefXtextDescriptionImpl
